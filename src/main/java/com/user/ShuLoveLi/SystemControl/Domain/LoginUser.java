package com.user.ShuLoveLi.SystemControl.Domain;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class LoginUser implements UserDetails {
    private String userName;
    private String password;
    private String avatar;
    private String birthday;
    private String nickName;
    private String id;
    //    int 4 字节 // 4 * 8 = 32     2^32 =
    private short phone; // short 16位，最高位是字符位，所以只能表示2^15
    private String email;
    private String authorities;

    @Override
    public Collection<? extends GrantedAuthority> getAuthorities() {
        ArrayList<SimpleGrantedAuthority> simpleGrantedAuthorities = new ArrayList<SimpleGrantedAuthority>();
        simpleGrantedAuthorities.add(new SimpleGrantedAuthority(this.authorities));
        return simpleGrantedAuthorities;
    }
    public void setUserName(String username) {
        this.userName = username;
    }

    public void setPassword(String pas) {
        this.password = pas;
    }




    @Override
    public String getPassword() {
        return this.password;
    }

    @Override
    public String getUsername() {
        return this.userName;
    }

    @Override
    public boolean isAccountNonExpired() {
        return true;
    }

    @Override
    public boolean isAccountNonLocked() {
        return true;
    }

    @Override
    public boolean isCredentialsNonExpired() {
        return true;
    }

    @Override
    public boolean isEnabled() {
        return true;
    }

    @Override
    public String toString() {
        return "user{" +
                "userName='" + userName + '\'' +
                ", password='" + password + '\'' +
                ", avatar='" + avatar + '\'' +
                ", birthday='" + birthday + '\'' +
                ", phone=" + phone +
                ", email='" + email + '\'' +
                ", authorities=" + authorities +
                '}';
    }
}
