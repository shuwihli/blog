package com.user.ShuLoveLi.SystemControl.Config.security;

import com.user.ShuLoveLi.SystemControl.Mapper.UserDetailMapper;
import com.user.ShuLoveLi.SystemControl.Domain.LoginUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
    public class UserDetailsServiceImpl implements UserDetailsService {
    @Autowired
    UserDetailMapper getUserMapper;
    @Override
    public LoginUser loadUserByUsername(String username) throws UsernameNotFoundException {
        LoginUser user = getUserMapper.getUserByName(username);
        if(user==null){
           throw new UsernameNotFoundException("找不到用户");
        }
        return user;
    }
}
