package cn.edu.svtcc.service;

import cn.edu.svtcc.domain.ArticleDO;
import java.util.ArrayList;

/**
 * article接口
 */
public interface ArticleService {
    /**
     * 获取文章列表
     * @return
     */
    ArrayList<ArticleDO> getAllArticle();

    /**
     * 根据id查找文章信息
     * @param articleId
     * @return
     */
    ArticleDO findArticleById(Integer articleId);
}
