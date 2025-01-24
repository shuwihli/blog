package com.user.ShuLoveLi.SystemControl.Controller;

import com.user.ShuLoveLi.SystemControl.Common.ResResult;
import com.user.ShuLoveLi.SystemControl.Domain.ArtCommon;
import com.user.ShuLoveLi.SystemControl.Domain.ArtCommonReplay;
import com.user.ShuLoveLi.SystemControl.Mapper.ArticleCommonMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@Slf4j
@RestController
@RequestMapping("/artCommon")
public class ArtCommonController {
    @Autowired
    ArticleCommonMapper articleCommonMapper;

    @PostMapping("/add")
    public ResResult addArtCommon(@RequestBody ArtCommon artCommon) {
        Integer id = artCommon.getId();
        artCommon.setArticleId(id);
        if(artCommon.getParentId()!= null){
            ArtCommonReplay replay = artCommon.getReplay();
            List<ArtCommon> list = replay.getList();
            list.add(artCommon);
        }
        articleCommonMapper.insertArtCommon(artCommon);
        log.info("评论回复：{}",artCommon);
        return ResResult.success(artCommon);
    }
    @GetMapping("/sel")
    public ResResult getAllArtCommons(@RequestParam(value = "id")  Integer id) {
        List<ArtCommon> artCommons = articleCommonMapper.getAllArtCommons(id);
        log.info("查询到评论{}", artCommons);
        return ResResult.success(artCommons);
    }
}
