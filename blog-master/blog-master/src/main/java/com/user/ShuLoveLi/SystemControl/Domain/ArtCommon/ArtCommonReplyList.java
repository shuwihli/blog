package com.user.ShuLoveLi.SystemControl.Domain.ArtCommon;

import com.user.ShuLoveLi.SystemControl.Domain.LoginUser;
import lombok.Data;
import org.springframework.stereotype.Component;

@Data
@Component
public class ArtCommonReplyList {
    private String id;
    private String parentId;
    private String uId;
    private String content;
    private String createTime;
    private ArtCommonUser user;
}
