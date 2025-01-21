package com.user.ShuLoveLi.SystemControl.Controller;

import com.user.ShuLoveLi.SystemControl.Common.ResResult;
import com.user.ShuLoveLi.SystemControl.Mapper.ArticleMapper;
import com.user.ShuLoveLi.SystemControl.Domain.Article;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
@RequestMapping("/article")
@RestController
public class ArticleController {
    private final LoginController loginController;
    @Autowired
    private final ArticleMapper articleMapper;
    public ArticleController(ArticleMapper articleMapper,LoginController loginController){
        this.articleMapper = articleMapper;
        this.loginController = loginController;
    }
    // 查看文章
    @GetMapping("/get")
    public List<Article> getAll() { //写该方法时还没有封装相应类 不改了 改了还要动vue
        return articleMapper.getArticle();
    }
    @GetMapping( "/getById")
    public ResResult getArticleById(@RequestParam Integer id) {
        Article articleById = articleMapper.getArticleById(id);
        System.out.println(articleById);
        return ResResult.success(articleById);
    }
    /**
     * 点赞文章
     */
    @PutMapping("/addHmb")
    public int addThumbsUp(@RequestParam Integer id) {
        int i = articleMapper.addthumbsUp(id);
        return i;
    }

    /**
     * 取消点赞文章
     */
    @PutMapping("/subHmb")
    public int subThumbsUp(@RequestParam Integer id) {
        return articleMapper.subthumbsUp(id);
    }

    /**
     * 新增文章
     */
    @PostMapping("/addArticle")
    public int addArticle(@RequestBody Article article) {
        Date date = new Date();
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd");
        String format = simpleDateFormat.format(date);
        article.setDate(format);
//        System.out.println(article);
        return articleMapper.addArticle(article);
    }
}
