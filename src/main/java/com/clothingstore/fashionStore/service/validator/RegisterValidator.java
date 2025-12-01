package com.clothingstore.fashionStore.service.validator;

import jakarta.validation.ConstraintValidator;
import jakarta.validation.ConstraintValidatorContext;
import org.springframework.stereotype.Component;
import com.clothingstore.fashionStore.service.UserService;

import java.lang.reflect.Field;

@Component
public class RegisterValidator implements ConstraintValidator<RegisterChecked, Object> {

    private String passwordField;
    private String confirmPasswordField;
    private final UserService userService;

    public RegisterValidator(UserService userService) {
        this.userService = userService;
    }

    @Override
    public void initialize(RegisterChecked constraintAnnotation) {
        this.passwordField = constraintAnnotation.passwordField();
        this.confirmPasswordField = constraintAnnotation.confirmPasswordField();
    }

    @Override
    public boolean isValid(Object obj, ConstraintValidatorContext context) {
        boolean valid = true;

        try {
            // Lấy value
            String password = (String) getFieldValue(obj, passwordField);
            String confirmPassword = (String) getFieldValue(obj, confirmPasswordField);
            String email = (String) getFieldValue(obj, "email"); // lấy email từ DTO

            // 1️⃣ Kiểm tra password != confirm
            if (password != null && confirmPassword != null && !password.equals(confirmPassword)) {
                context.disableDefaultConstraintViolation();
                context.buildConstraintViolationWithTemplate("Passwords do not match")
                        .addPropertyNode(confirmPasswordField)
                        .addConstraintViolation();
                valid = false;
            }

            if (email != null && userService.checkEmailExist(email)) {
                context.disableDefaultConstraintViolation();
                context.buildConstraintViolationWithTemplate("Email is already in use")
                        .addPropertyNode("email")
                        .addConstraintViolation();
                valid = false;
            }

        } catch (Exception e) {
            return false;
        }

        return valid;
    }

    private Object getFieldValue(Object object, String fieldName) throws Exception {
        Field field = object.getClass().getDeclaredField(fieldName);
        field.setAccessible(true);
        return field.get(object);
    }
}
