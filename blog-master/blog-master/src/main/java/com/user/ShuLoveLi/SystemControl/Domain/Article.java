package com.user.ShuLoveLi.SystemControl.Domain;

import lombok.Data;

@Data
public class Article {
    private Integer id; //文章编号
    private String title;// 文章标题
    // 内容
    private String content;
    private String userId;//文章发布用户ID
    //    private Integer articleId; //
    private String date;
    private String nickName; // 作者名称
    private String avatar;
//    private Integer hot;
//    private Integer views;
//    private Integer thumbsUp;
}
