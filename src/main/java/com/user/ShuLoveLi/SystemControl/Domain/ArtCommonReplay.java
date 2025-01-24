package com.user.ShuLoveLi.SystemControl.Domain;

import lombok.Data;
import org.springframework.stereotype.Component;

import java.util.ArrayList;
import java.util.List;
@Data
@Component
public class ArtCommonReplay {
    Integer total;
    List<ArtCommon> list = new ArrayList<>();
}
