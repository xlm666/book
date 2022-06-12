package cn.edu.svtcc.dao;

import cn.edu.svtcc.domain.ArticleDO;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.ResultMap;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Repository;
import java.util.ArrayList;

/**
 * articleDao的接口,提供文章相关操作
 */

@Repository("ArticleDao")
public interface ArticleDao {
    /**
     * 获取article表中的所有数据
     * @return
     */
    @Select("select * from article")
    @Results(id = "ArticleDao",value = {
            @Result(id = true,column = "article_id",property = "articleId"),
            @Result(id = true,column = "article_content",property = "articleContent"),
            @Result(id = true,column = "article_author",property = "articleAuthor"),
            @Result(id = true,column = "article_date",property = "articleDate"),
            @Result(id = true,column = "article_img",property = "articleImg"),
            @Result(id = true,column = "article_subtitle",property = "articleSubtitle")
    })
    ArrayList<ArticleDO> getAllArticle();

    /**
     *通过articleId查询文章信息
     * @param articleId
     * @return
     */
    @Select("select * from article where article_id=#{articleId}")
    @ResultMap("ArticleDao")
    ArticleDO findArticleById(Integer articleId);
}
