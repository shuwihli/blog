package com.user.ShuLoveLi.SystemControl.Domain.ArtCommon;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class ArtCommonUser {
    private String nickName;
    private String username;
    private String avatar;
}
