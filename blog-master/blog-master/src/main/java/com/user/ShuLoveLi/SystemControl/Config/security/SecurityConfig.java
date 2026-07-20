package com.user.ShuLoveLi.SystemControl.Config.security;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.ProviderManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configurers.AbstractHttpConfigurer;
import org.springframework.security.web.DefaultSecurityFilterChain;
import org.springframework.web.server.session.CookieWebSessionIdResolver;
import org.springframework.web.server.session.WebSessionIdResolver;

@Configuration
@EnableWebSecurity        // 该注解启用 Spring Security 的 web 安全功能。
public class SecurityConfig {
    // 使用构造函数注入AuthenticationProvider实现类 - spring推荐做法
    private final CustomerAuthentication customerAuthentication;

    public SecurityConfig(CustomerAuthentication customerAuthentication) {
        this.customerAuthentication = customerAuthentication;
    }

    @Bean
    public DefaultSecurityFilterChain filterChain(HttpSecurity http) throws Exception {
        http
//                securityContext((securityContext) -> securityContext
//                        .securityContextRepository(new HttpSessionSecurityContextRepository())
//                )
                // 开启授权保护
                .authorizeHttpRequests(authorize -> authorize
                        // 不需要认证的地址有哪些
                        .requestMatchers("/error/**", "/login", "/upload", "/loginUser", "/signUser", "/wx/**","/**").permitAll()    // ** 通配符
                        // 对所有请求开启授权保护
                        .anyRequest().
                        authenticated()
                )
                .authenticationProvider(customerAuthentication);
        http.csrf(AbstractHttpConfigurer::disable);
        return http.build();
    }

    @Bean
    public AuthenticationManager authenticationManager(
            UserDetailsServiceImpl userDetailsService) {
        CustomerAuthentication authenticationProvider = new CustomerAuthentication(userDetailsService);
        return new ProviderManager(authenticationProvider);
    }

    /**
     * 配置密码加密选项
     */
//    @Bean
//    public PasswordEncoder passwordEncoder() {
//        return PasswordEncoderFactories.createDelegatingPasswordEncoder();
//    }
    @Autowired
    public void configure(AuthenticationManagerBuilder builder) {
        builder.eraseCredentials(false);
    }


}

