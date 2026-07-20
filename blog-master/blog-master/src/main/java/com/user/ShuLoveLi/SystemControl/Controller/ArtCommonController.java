package com.user.ShuLoveLi.SystemControl.Controller;

import com.user.ShuLoveLi.SystemControl.Common.ResResult;
import com.user.ShuLoveLi.SystemControl.Domain.ArtCommon.ArtCommon;
import com.user.ShuLoveLi.SystemControl.Domain.ArtCommon.ArtCommonReplyList;
import com.user.ShuLoveLi.SystemControl.Mapper.ArticleCommonMapper;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

@Slf4j
@RestController
@RequestMapping("/artCommon")
//@PropetySource( "配置文件路径" )
//@ConfigurationProperties（prefix = “ 前缀” ）
public class ArtCommonController {
    @Autowired
    ArticleCommonMapper articleCommonMapper;
    @Value("${localIp}")
    private String localIp;

    @PostMapping("/add") //
    public ResResult addArtCommon(@RequestBody ArtCommon artCommon) {
//        String id = artCommon.getId();
//        artCommon.setArticleId(articleId);//设置文章Id号

        int i = articleCommonMapper.insertArtCommon(artCommon);
        return ResResult.success(i);
    }

    /**
     * @Param id 根据文章Id查询评论
     */
    @GetMapping("/sel")
    public ResResult getAllArtCommons(ArtCommon artCommon) {
        List<ArtCommon> allArtCommons = articleCommonMapper.getAllArtCommons(artCommon); // 所有的评论
        List<ArtCommon> topCommon = new ArrayList<>(); // 所有的评论
        List<ArtCommon> havaParent = new ArrayList<>(); // 所有的评论

        allArtCommons.forEach(item -> {
            if (item.getParentId() == null) {
                item.getReply().getList().clear();
                topCommon.add(item); // 构造顶级评论列表
            } else {
                item.getReply().getList().clear();
                havaParent.add(item);
            }
        });

        /**
         * 数据库内只存储了头像的名称，查询后需要自行拼接完成http地址 （此处只补全了顶楼评论的头像地址）
         * */
        allArtCommons.forEach(item2 -> {
            item2.getReply().getList().forEach(avatarFilter -> {
                String avatar = avatarFilter.getUser().getAvatar();
                String httpAvatar = localIp + avatar;
                avatarFilter.getUser().setAvatar(httpAvatar);
            });
        });

        /**
         * 处理评论层级关系
         * */
        havaParent.forEach(item -> {
            {
                topCommon.forEach(item1 -> {// item1 是所有顶级评论
                    if (Objects.equals(item1.getId(), item.getParentId())) { // 和当前的子级评论进行比较
                        item1.getReply().setTotal(1);
                        // 构造一个回复对象
                        ArtCommonReplyList commonObjectReplay = new ArtCommonReplyList();//回复列表
                        commonObjectReplay.setUId(item.getUId());
                        commonObjectReplay.setCreateTime(item.getCreateTime());
                        commonObjectReplay.setId(item.getId());
                        commonObjectReplay.setParentId(item.getParentId());
                        // 由于评论组件的需要接收username参数 将昵称与用户账户号对调展示
                        item.getUser().setUsername(item.getUser().getNickName());
                        // 构造完整的评论头像
                        if(item.getUser().getAvatar().startsWith("http")){
                            item.getUser().setAvatar(item.getUser().getAvatar());
                        }else{
                            item.getUser().setAvatar(localIp+item.getUser().getAvatar());
                        }
                        commonObjectReplay.setUser(item.getUser());
                        commonObjectReplay.setContent(item.getContent());
                        item1.getReply().getList().add(commonObjectReplay);
                    }
                });
            }
        });
        return ResResult.success(topCommon);
    }
}
