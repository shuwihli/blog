package com.user.ShuLoveLi.SystemControl.Mapper;
import com.user.ShuLoveLi.SystemControl.Domain.Article;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

import java.util.List;

@Mapper
public interface ArticleMapper {

    @Select("select a.id,a.userid,a.content,a.title,h.article_id,h.views,h.thumbs_up,h.hot,u.nickname from article a left join heat h on a.id = h.article_id left join user u on u.id = a.userId")
    public List<Article> getArticle();
    @Select("select a.id,a.userId,u.nickname,u.avatar,a.content,a.title,a.date from article a left join heat h on a.id = h.article_id left join user u on u.id = a.userId where a.id = #{id}")
    public Article getArticleById(Integer id); // TODO 这屎一样的SQL
    @Update("UPDATE heat SET hot= hot+1 where thumbs_id = #{id}")
    public int addthumbsUp(Integer id);
    @Update("UPDATE heat SET hot= hot-1 where thumbs_id = #{id}")
    public int subthumbsUp(Integer id);
    @Insert("insert into article (id,userid,content,title,date) values(null,#{userId},#{content},#{title},#{date})")
    int addArticle(Article article);
}
