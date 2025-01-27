package com.user.ShuLoveLi.SystemControl.WeChat.Controller;

import com.alibaba.fastjson2.JSON;
import com.alibaba.fastjson2.JSONObject;
import com.user.ShuLoveLi.SystemControl.Common.ResResult;
import com.user.ShuLoveLi.SystemControl.Config.WebSocketConfig.WxUserInfo;
import com.user.ShuLoveLi.SystemControl.Controller.LoginController;
import com.user.ShuLoveLi.SystemControl.Domain.ArtCommon.ArtCommonUser;
import com.user.ShuLoveLi.SystemControl.Domain.LoginUser;
import com.user.ShuLoveLi.SystemControl.Mapper.ArticleMapper;
import com.user.ShuLoveLi.SystemControl.Mapper.UserDetailMapper;
import com.user.ShuLoveLi.SystemControl.WeChat.Domain.WxTokenInfo;
import com.user.ShuLoveLi.SystemControl.WeChat.Domain.WxUserBean;
import io.swagger.models.auth.In;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.websocket.Session;
import lombok.extern.slf4j.Slf4j;
import org.apache.tomcat.websocket.WsSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.http.ResponseEntity;
import org.springframework.http.converter.StringHttpMessageConverter;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.context.SecurityContextHolderStrategy;
import org.springframework.security.web.context.HttpSessionSecurityContextRepository;
import org.springframework.security.web.context.SecurityContextRepository;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.client.RestTemplate;

import java.io.IOException;
import java.net.URLDecoder;
import java.net.http.HttpClient;
import java.net.http.WebSocket;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Random;

@Slf4j
@RestController
@RequestMapping("/wx")
public class WeChatController {
    static Map<Integer, String> objectObjectMap = new HashMap<>();
    @Autowired
    LoginController loginController;
    @Autowired
    UserDetailMapper userDetailMapper;
    private final SecurityContextRepository securityContextRepository = new HttpSessionSecurityContextRepository();
    private final SecurityContextHolderStrategy securityContextHolderStrategy = SecurityContextHolder.getContextHolderStrategy();
    static Integer uuid = null;
    @Value("${wxRedirect}")
    private String wxRedirect;

    @GetMapping("/Test")
    public String wechat(@RequestParam(value = "signature") String signature,
                         @RequestParam(value = "timestamp") String timestamp,
                         @RequestParam(value = "nonce") String nonce,
                         @RequestParam(value = "echostr") String echostr) {
        log.info("收到微信校验请求echostr:{}", echostr);
        return echostr;
    }

    @GetMapping("/callback")
    public String wxCallBack(String code, String statue, HttpServletResponse httpServletResponse, HttpServletRequest httpServletRequest) throws IOException {
        String appid = "wx7098f5e1c93ae8b5";
        String secret = "26938cd2915f59f880cb46ccc37623d6";
        String url = "https://api.weixin.qq.com/sns/oauth2/access_token?appid=" + appid + "&secret=" + secret + "&code=" + code + "&grant_type=authorization_code";
        RestTemplate restTemplate = new RestTemplate();
        ResponseEntity<String> response = restTemplate.getForEntity(url, String.class);
        log.info("statue: {}", statue);
//        第四步
        WxTokenInfo wxTokenInfo = JSON.parseObject(response.getBody(), WxTokenInfo.class);
        log.info("获得用户token信息: {}", wxTokenInfo);
        assert wxTokenInfo != null;
        String userInfoUrl = "https://api.weixin.qq.com/sns/userinfo?access_token=" + wxTokenInfo.getAccess_token() + "&openid=OPENID&lang=zh_CN";
        restTemplate.getMessageConverters().set(1, new StringHttpMessageConverter(StandardCharsets.UTF_8));
        ResponseEntity<String> forEntity = restTemplate.getForEntity(userInfoUrl, String.class);
        String responseBody = new String(Objects.requireNonNull(forEntity.getBody()).getBytes(StandardCharsets.UTF_8), StandardCharsets.UTF_8);
        JSONObject jsonObject = JSON.parseObject(responseBody);
        WxUserBean wxUser = JSON.toJavaObject(jsonObject, WxUserBean.class);
        log.info("获得用户信息: {}", wxUser);
        // 在数据库中记录该用户 创造身份对象
        WxUserInfo wxUserInfo = new WxUserInfo();
        wxUserInfo.sendMessage(responseBody, uuid);
        LoginUser userByName = userDetailMapper.getUserByName(wxUser.getOpenid());
        /**根据openid来判断该用户是否存在，如不存在则创建一个用户对应该微信账号进行信息展示
         * 微信用户默认密码 wechat
         * 默认username openid
         * */
        if (userByName != null) {
            return responseBody;
        }
        LoginUser loginUser = new LoginUser();
        loginUser.setAvatar(wxUser.getHeadimgurl());
        loginUser.setId(wxUser.getOpenid());
        loginUser.setUserName(wxUser.getOpenid());
        loginUser.setNickName(wxUser.getNickname());
        loginUser.setAuthorities("RULE_USER");
        loginUser.setPassword("wechat");
        loginController.sign(loginUser);
        return responseBody;
    }

    @GetMapping("/login")
    @ResponseBody
    public ResResult wechatLogin() {
        if (!objectObjectMap.isEmpty()) {
            objectObjectMap.clear();
        }
        String appid = "wx7098f5e1c93ae8b5";
        String redirectUrl = URLDecoder.decode(wxRedirect + "/wx/callback", StandardCharsets.UTF_8);
        String url = "https://open.weixin.qq.com/connect/oauth2/authorize?appid=" + appid + "&redirect_uri=" + redirectUrl + "&response_type=code&scope=snsapi_userinfo&state=STATE#wechat_redirect";
        Random random = new Random();
        Integer i = random.nextInt(1, 1100);
        this.uuid = i;
        objectObjectMap.put(i, url);
        return ResResult.success(objectObjectMap);
    }
}
