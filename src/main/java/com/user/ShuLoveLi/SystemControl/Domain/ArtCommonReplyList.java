package com.user.ShuLoveLi.SystemControl.Domain;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;
@Data
@Component
public class ArtCommonReplayList {
    private String id;
    private String parentId;
    private String uId;
    private String content;
    private String createTime;
    private LoginUser user;
}
