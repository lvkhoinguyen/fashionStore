package com.clothingstore.fashionStore.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.dao.DaoAuthenticationProvider;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.security.web.authentication.HttpMessageConverterAuthenticationSuccessHandler.AuthenticationSuccess;

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

        // @Bean
        // public SecurityFilterChain securityFilterChain(HttpSecurity http) throws
        // Exception {
        // http
        // .authorizeHttpRequests(auth -> auth
        // .requestMatchers("/**").permitAll()
        // .anyRequest().authenticated())
        // .csrf(csrf -> csrf.disable())
        // .formLogin(form -> form.disable())
        // .httpBasic(basic -> basic.disable());

        // return http.build();
        // }

        @Bean
        public UserDetailsService userDetailsService(UserService userService) {
                return new CustomUserDetailsService(userService);

        }

        @Bean
        public AuthenticationManager authenticationManager(HttpSecurity http,
                        PasswordEncoder passwordEncoder,
                        UserDetailsService userDetailsService) throws Exception {
                AuthenticationManagerBuilder authenticationManagerBuilder = http
                                .getSharedObject(AuthenticationManagerBuilder.class);
                authenticationManagerBuilder
                                .userDetailsService(userDetailsService)
                                .passwordEncoder(passwordEncoder);
                return authenticationManagerBuilder.build();
        }

        @Bean
        public AuthenticationSuccessHandler customSuccessHandler() {
                return new CustomSuccesHandler();
        }

        @Bean
        SecurityFilterChain filterChain(HttpSecurity http) throws Exception {

                http
                                .csrf(csrf -> csrf.disable())

                                .authorizeHttpRequests(auth -> auth
                                                .dispatcherTypeMatchers(DispatcherType.FORWARD,
                                                                DispatcherType.INCLUDE)
                                                .permitAll()
                                                .requestMatchers("/", "/login", "/product/detail/**", "/css/**",
                                                                "/js/**",
                                                                "/img/**", "/assets/**",
                                                                "/client/**")
                                                .permitAll()

                                                .requestMatchers("/admin/**").hasRole("ADMIN")
                                                .requestMatchers("/user/**").hasAnyRole("USER", "ADMIN")

                                                .anyRequest().authenticated())

                                .formLogin(login -> login
                                                .loginPage("/login")
                                                .failureUrl("/login?error")
                                                .successHandler(customSuccessHandler())
                                                .permitAll());

                return http.build();
        }

        @Bean
        public DaoAuthenticationProvider authProvider(
                        PasswordEncoder passwordEncoder,
                        UserDetailsService userDetailsService) {

                DaoAuthenticationProvider authProvider = new DaoAuthenticationProvider();
                authProvider.setUserDetailsService(userDetailsService);
                authProvider.setPasswordEncoder(passwordEncoder);
                authProvider.setHideUserNotFoundExceptions(false);

                return authProvider;
        }

}
