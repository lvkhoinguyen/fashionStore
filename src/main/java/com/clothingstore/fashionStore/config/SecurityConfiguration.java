package com.clothingstore.fashionStore.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
@EnableMethodSecurity(securedEnabled = true)
public class SecurityConfiguration {
    @Bean
    public PasswordEncoder passwordEncoder() {
        return new BCryptPasswordEncoder();
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
                .authorizeHttpRequests(auth -> auth
                        .requestMatchers("/**").permitAll() // Cho phép tất cả mọi request
                        .anyRequest().authenticated())
                .csrf(csrf -> csrf.disable()) // Tắt CSRF (thường làm khi dev hoặc làm API)
                .formLogin(form -> form.disable()) // Tắt form login mặc định
                .httpBasic(basic -> basic.disable()); // Tắt HTTP Basic auth

        return http.build();
    }

}
