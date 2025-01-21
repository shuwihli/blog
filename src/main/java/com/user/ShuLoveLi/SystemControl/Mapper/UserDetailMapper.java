package com.user.ShuLoveLi.SystemControl.Mapper;

import com.user.ShuLoveLi.SystemControl.Domain.LoginUser;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.springframework.security.core.GrantedAuthority;
import java.util.List;
@Mapper
public interface UserDetailMapper {
    @Select("select * from user where username = #{username}")
    public LoginUser getUserByName(String username);
    @Select("select rule from user where name = #{username}")
    public List<GrantedAuthority> getRole(String username) ;

//    @Insert("insert into user (id,username,nickname,password,avatar) values()")
    public void signUser(LoginUser loginUser);
}
