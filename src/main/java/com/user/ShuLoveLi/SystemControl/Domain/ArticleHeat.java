package com.user.ShuLoveLi.SystemControl.Domain;

import lombok.Data;

@Data
public class ArticleHeat {
    private Long id;
    private Integer hot;
    private Integer views;
    private Integer thumbsUp;
}
