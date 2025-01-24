package com.user.ShuLoveLi.SystemControl.Domain;

import io.swagger.v3.oas.models.security.SecurityScheme;
import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;

@Data
@Component
public class ArtCommon {
        private Integer id; // 评论ID
        private Integer parentId; // 父评论ID
        private String uId; // 用户ID
        private String content; // 评论内容
        private String createTime; // 评论创建时间
        private Integer total; // 回复数
        private LoginUser user;
        private Integer articleId;
        private ArtCommonReplay replay = new ArtCommonReplay();
}
