package com.user.ShuLoveLi.SystemControl.Mapper;

import org.apache.ibatis.annotations.*;

import java.util.List;

@Mapper
public interface ArticleImg {
    @Update("update user set avatar= #{avatar} where username = #{username}")
    public void insertImg(String avatar,String  username);
    @Select("select userid from article_image")
    public List<Integer> userId();
    @Delete("delete from image where userid = #{i}")
    void delete(Integer i);
    @Select("select file from image where userid = #{id}")
    String getImage(Integer id);
}
