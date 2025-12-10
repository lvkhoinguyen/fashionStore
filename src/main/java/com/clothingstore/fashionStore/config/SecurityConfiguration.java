package com.clothingstore.fashionStore.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.RememberMeServices;
import org.springframework.security.web.authentication.rememberme.TokenBasedRememberMeServices;

import com.clothingstore.fashionStore.service.UserService;
import com.clothingstore.fashionStore.service.validator.CustomUserDetailsService;

import jakarta.servlet.DispatcherType;

@Configuration
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfiguration {

        @Bean
        public PasswordEncoder passwordEncoder() {
                return new BCryptPasswordEncoder();
        }

        @Bean
        public UserDetailsService userDetailsService(UserService userService) {
                return new CustomUserDetailsService(userService);
        }

        @Bean
        public DaoAuthenticationProvider authProvider(
                        PasswordEncoder passwordEncoder,
                        UserDetailsService userDetailsService) {
                DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
                authProvider.setUserDetailsService(userDetailsService);
                authProvider.setPasswordEncoder(passwordEncoder);
                return authProvider;
        }

        @Bean
        public AuthenticationSuccessHandler customSuccessHandler(UserService userService) {
                return new CustomSuccessHandler(userService);
        }

        @Bean
        public RememberMeServices rememberMeServices(UserDetailsService userDetailsService) {
                TokenBasedRememberMeServices rememberMeServices = new TokenBasedRememberMeServices(
                                "uniqueAndSecretKey", userDetailsService);
                rememberMeServices.setAlwaysRemember(true);
                return rememberMeServices;
        }

        @Bean
        SecurityFilterChain filterChain(HttpSecurity http,
                        AuthenticationSuccessHandler customSuccessHandler,
                        RememberMeServices rememberMeServices) throws Exception {
                http
                                .authorizeHttpRequests(authorize -> authorize
                                                .dispatcherTypeMatchers(DispatcherType.FORWARD, DispatcherType.INCLUDE)
                                                .permitAll()
                                                // Cho phép truy cập các file tĩnh và trang public
                                                .requestMatchers("/", "/login", "/register", "/product/**",
                                                                "/client/**", "/css/**", "/js/**", "/images/**")
                                                .permitAll()

                                                // Phân quyền
                                                .requestMatchers("/admin/**").hasRole("ADMIN")
                                                .requestMatchers("/user/**").hasAnyRole("USER", "ADMIN")

                                                // Các request còn lại phải đăng nhập
                                                .anyRequest().authenticated())
                                .formLogin(form -> form
                                                .loginPage("/login")
                                                .loginProcessingUrl("/login") // Khớp với action="${...}/login" trong
                                                                              // JSP

                                                // QUAN TRỌNG: Khớp với name="" trong thẻ input của JSP
                                                .usernameParameter("username")
                                                .passwordParameter("password")

                                                .successHandler(customSuccessHandler)
                                                .failureUrl("/login?error")
                                                .permitAll())
                                .logout(logout -> logout
                                                .logoutRequestMatcher(
                                                                new org.springframework.security.web.util.matcher.AntPathRequestMatcher(
                                                                                "/logout"))
                                                .logoutSuccessUrl("/login?logout")
                                                .deleteCookies("JSESSIONID")
                                                .invalidateHttpSession(true)
                                                .permitAll())
                                .rememberMe(remember -> remember
                                                .rememberMeServices(rememberMeServices));

                return http.build();
        }
}