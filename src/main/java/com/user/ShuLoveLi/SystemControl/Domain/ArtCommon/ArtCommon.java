package com.user.ShuLoveLi.SystemControl.Domain.ArtCommon;

import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Component
public class ArtCommon {
        private String id; // 评论ID
        private String parentId; // 父评论ID
        private String uId; // 用户ID
        private String content; // 评论内容
        private String createTime; // 评论创建时间
        private Integer total; // 回复数
        private Integer articleId;
        private ArtCommonUser user;
        private ArtCommonReply reply = new ArtCommonReply();
}
