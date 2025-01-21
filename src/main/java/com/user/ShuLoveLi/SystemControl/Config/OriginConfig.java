package com.user.ShuLoveLi.SystemControl.Config;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

// 全局跨越配置 允许所有域名请求
@Configuration
public class OriginConfig implements WebMvcConfigurer{
        //解决跨域问题
        @Override
        public void addCorsMappings(CorsRegistry registry) {
            registry.addMapping("/**")
//                    .allowedOrigins("http://127.0.0.1:5173")
                    .allowedOrigins("http://127.0.0.1:5173","http://192.168.200.3:9998","http://kr-se-cncn-1.ofalias.net:39153")
                    .allowCredentials(true)
                    .allowedMethods("GET", "POST", "DELETE", "PUT")
                    .maxAge(3600);
        }
    }
