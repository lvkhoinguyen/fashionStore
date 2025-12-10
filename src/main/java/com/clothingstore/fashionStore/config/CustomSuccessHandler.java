package com.clothingstore.fashionStore.config;

import java.io.IOException;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.DefaultRedirectStrategy;
import org.springframework.security.web.RedirectStrategy;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

import com.clothingstore.fashionStore.domain.User;
import com.clothingstore.fashionStore.service.UserService;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class CustomSuccessHandler implements AuthenticationSuccessHandler {

    @Autowired
    private final UserService userService;
    private final RedirectStrategy redirectStrategy = new DefaultRedirectStrategy();

    public CustomSuccessHandler(UserService userService) {
        this.userService = userService;
    }

    protected String determineTargetUrl(final Authentication authentication) {
        Map<String, String> roleTargetUrlMap = new HashMap<>();
        roleTargetUrlMap.put("ROLE_USER", "/");
        roleTargetUrlMap.put("ROLE_ADMIN", "/admin");

        final Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        for (final GrantedAuthority grantedAuthority : authorities) {
            String authorityName = grantedAuthority.getAuthority();
            if (roleTargetUrlMap.containsKey(authorityName)) {
                return roleTargetUrlMap.get(authorityName);
            }
        }

        // Mặc định nếu không khớp role nào thì về trang chủ thay vì báo lỗi
        return "/";
    }

    protected void clearAuthenticationAttributes(HttpServletRequest request) {
        HttpSession session = request.getSession(false);
        if (session != null) {
            session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);
        }
    }

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response,
            Authentication authentication) throws IOException, ServletException {

        String targetUrl = determineTargetUrl(authentication);

        if (response.isCommitted()) {
            return;
        }

        // Xử lý Session: Lưu thông tin User để dùng ở giao diện
        HttpSession session = request.getSession(false);
        if (session == null) {
            session = request.getSession(true);
        }

        // Lấy email từ principal (do UserDetailsService trả về)
        String email = authentication.getName();
        User user = this.userService.getUserByEmail(email); // Đảm bảo hàm này tìm theo Email

        if (user != null) {
            session.setAttribute("fullName", user.getFullName());
            session.setAttribute("avatar", user.getAvatar()); // Ví dụ thêm avatar
            session.setAttribute("id", user.getId());
            session.setAttribute("email", user.getEmail());
        }

        clearAuthenticationAttributes(request);
        redirectStrategy.sendRedirect(request, response, targetUrl);
    }
}