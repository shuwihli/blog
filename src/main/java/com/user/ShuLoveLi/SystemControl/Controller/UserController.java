package com.user.ShuLoveLi.SystemControl.Controller;

import com.user.ShuLoveLi.SystemControl.Common.ErrorEnum;
import com.user.ShuLoveLi.SystemControl.Common.ResResult;
import com.user.ShuLoveLi.SystemControl.Config.UploadConfig;
import com.user.ShuLoveLi.SystemControl.Mapper.ArticleImg;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import java.io.File;
import java.io.IOException;
import java.util.*;

//@PropertySource("classpath:application.yml")
@RestController
public class UserController {
//    @Autowired
//    UploadConfig uploadConfig;
    @Autowired
    ArticleImg articleImg;
    @Value("${upload}")
    private String upload;

    //简单的文件上传 —— 表单形式
    @PostMapping("/upload")
    public ResResult upload(MultipartFile image,String username) throws IOException {
        if (image.isEmpty()) {
            return ResResult.error(ErrorEnum.NO_IMAGE_ERROR,"没有该媒体对象");
        }
        String FileType = Objects.requireNonNull(image.getContentType()).split("/")[1];
        String uuid = UUID.randomUUID().toString();
        String filePath = upload + uuid + "." + FileType;
        File file = new File(filePath);
        image.transferTo(file);
        articleImg.insertImg(uuid+"."+FileType,username);
        return ResResult.imageSuccess(new UploadConfig(uuid + "." + FileType,image.getOriginalFilename()));// 默认路径在upload配置 与uuid相加
    }

// 这个方法得改  TODO 确实有待改进 目前没用
    @GetMapping("/getImage")
    public String getImage(Integer id) {
        return articleImg.getImage(id);
    }
}

