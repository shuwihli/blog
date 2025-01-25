package com.user.ShuLoveLi.SystemControl.Controller;

import com.user.ShuLoveLi.SystemControl.Common.ErrorEnum;
import com.user.ShuLoveLi.SystemControl.Config.security.PassWordEncoder;
import com.user.ShuLoveLi.SystemControl.Mapper.UserDetailMapper;
import com.user.ShuLoveLi.SystemControl.Common.ResResult;
import com.user.ShuLoveLi.SystemControl.Domain.LoginUser;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.CurrentSecurityContext;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.context.SecurityContextHolderStrategy;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.security.web.context.SecurityContextRepository;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.session.CookieWebSessionIdResolver;

import java.util.UUID;

@Slf4j
@RestController
public class LoginController {
    @Autowired
    UserDetailMapper getUserMapper;
    @Autowired
    AuthenticationManager authenticationManager;
    private final SecurityContextRepository securityContextRepository = new HttpSessionSecurityContextRepository();
    private final SecurityContextHolderStrategy securityContextHolderStrategy = SecurityContextHolder.getContextHolderStrategy();


    @PostMapping("/login")
    public ResResult login(@RequestBody LoginUser loginRequest, HttpServletRequest request, HttpServletResponse response) {
        UsernamePasswordAuthenticationToken token = UsernamePasswordAuthenticationToken.unauthenticated(
                loginRequest.getUsername(), loginRequest.getPassword());
        //设置认证对象details信息        token.setDetails();
        Authentication authentication = authenticationManager.authenticate(token); // 返回一个认证对象
        SecurityContext context = this.securityContextHolderStrategy.createEmptyContext();
        context.setAuthentication(authentication);
        securityContextHolderStrategy.setContext(context);
        securityContextRepository.saveContext(SecurityContextHolder.getContext(), request, response);
        return ResResult.success(context);
    }

    // TODO 还没想到权限的设置方式 但是目前没有涉及到权限问题
    @PostMapping("/signUser")
    public ResResult sign(@RequestBody LoginUser loginUser) {
        // 判断是否重名
        String username = loginUser.getUsername();
        LoginUser userByName = getUserMapper.getUserByName(username);
        if(userByName!=null){
            return ResResult.error(ErrorEnum.HAS_USER,username);
        }
        String userId = UUID.randomUUID().toString();
        loginUser.setAuthorities("ROLR_USER");
        loginUser.setId(userId);
        // 密码加密
        PasswordEncoder delegatingPasswordEncoder = PassWordEncoder.createDelegatingPasswordEncoder();
        String encode = delegatingPasswordEncoder.encode(loginUser.getPassword());
        loginUser.setPassword(encode);
        getUserMapper.signUser(loginUser);
        return ResResult.success(loginUser);
    }

//    @GetMapping("/wxLogin")
//    @ResponseBody
//    public void vxLogin(HttpServletResponse httpServletResponse) throws IOException {
//        String recUrl = URLDecoder.decode("http://cn-hk-bgp-4.ofalias.net/wxCallback", StandardCharsets.UTF_8);
//        String appid = "wx7098f5e1c93ae8b5";
//        String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid="+appid+"&redirect_uri="+recUrl+"recUrl+&response_type=code&scope=SCOPE&state=STATE#wechat_redirect";
//        httpServletResponse.setContentType("image/jpg");
//        QrCodeUtil.generate(url,300,300,"jpg",httpServletResponse.getOutputStream());
//    }
    // 获取当前用户名信息
    @GetMapping("/loginUser")
    public ResResult getLogin(@CurrentSecurityContext SecurityContext context) {
        return ResResult.success(context.getAuthentication());
    }
}
