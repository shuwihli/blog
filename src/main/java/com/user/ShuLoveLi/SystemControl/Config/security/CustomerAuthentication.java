package com.user.ShuLoveLi.SystemControl.Config.security;

import com.user.ShuLoveLi.SystemControl.Domain.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationProvider;
import org.springframework.security.authentication.BadCredentialsException;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public class CustomerAuthentication implements AuthenticationProvider {
    private final UserDetailsService userDetailsService;

    @Autowired
    public CustomerAuthentication(UserDetailsService userDetailsService) {
        this.userDetailsService = userDetailsService;
    }

    @Override
    /**AuthenticationProvider实现类，服务器存储凭证*/
    public Authentication authenticate(Authentication authentication) throws AuthenticationException {
        if (authentication == null) {
            throw new BadCredentialsException("未提供有效认证凭据");
        }
        LoginUser userByName = (LoginUser) userDetailsService.loadUserByUsername(authentication.getName()); // 根据输入用户名查找出的用户
        ArrayList<GrantedAuthority> objects = new ArrayList<>(userByName.getAuthorities());
        String password = (String) authentication.getCredentials();
        /**比对密码*/
        if (PassWordEncoder.createDelegatingPasswordEncoder().matches(password,userByName.getPassword())) {// 使用加密器进行解密
            return new UsernamePasswordAuthenticationToken(
                   userByName  , authentication.getCredentials(), objects);
        }
        throw new BadCredentialsException("密码错误");
    }

    @Override
    public boolean supports(Class<?> authentication) {
        return true;
    }
}
