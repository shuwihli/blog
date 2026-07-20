package com.user.ShuLoveLi.SystemControl.WeChat.Domain;
import lombok.Data;
import org.springframework.stereotype.Component;
@Component
@Data
    public class WxTokenInfo {
        // 微信返回的 access_token
        private String access_token;

        // access_token 的有效期（秒）
        private int expires_in;

        // 刷新 access_token 所需的 refresh_token
        private String refresh_token;

        // 用户的唯一标识（OpenID）
        private String openid;

        // 授权作用域
        private String scope;

        // Getters 和 Setters

    }
