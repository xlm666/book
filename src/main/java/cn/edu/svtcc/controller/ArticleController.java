package cn.edu.svtcc.controller;

import cn.edu.svtcc.domain.ArticleDO;
import cn.edu.svtcc.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class ArticleController {
    @Autowired
    private ArticleService articleService;

    /**
     * 显示文章列表
     * @param request
     * @return
     */
    @RequestMapping("/article")
    public String listArticle(HttpServletRequest request){
        List<ArticleDO> articleList=articleService.getAllArticle();
        request.setAttribute("ArticleList",articleList);
        return "index";
    }

    /**
     * 显示文章详细信息
     * @return
     */
    @RequestMapping("/articleDetail")
    public String articleDetail(Integer articleId,HttpServletRequest request){
        //将查询到的数据存放在session中
        request.setAttribute("ArticleDetail",articleService.findArticleById(articleId));
        return "articleDetail";
    }
}
