package com.user.ShuLoveLi.SystemControl.Config.WebSocketConfig;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.server.standard.ServerEndpointExporter;

@Configuration
public class WebSocketBean {
    /**
     * * 注入对象ServerEndpointExporter，
     * * 这个bean会自动注册使用了@ServerEndpoint注解声明的Websocket endpoint
     */
    @Bean
    public ServerEndpointExporter serverEndpointExporter() {
        ServerEndpointExporter exporter = new ServerEndpointExporter();
        // 手动注册 WebSocket 端点
        exporter.setAnnotatedEndpointClasses(WxUserInfo.class);
        return new ServerEndpointExporter();
    }
}
