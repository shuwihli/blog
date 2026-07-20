package com.user.ShuLoveLi.SystemControl.Domain.ArtCommon;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Data
@Component
public class ArtCommonReply {
    Integer total;
    List<ArtCommonReplyList> list = new ArrayList<>();
}
