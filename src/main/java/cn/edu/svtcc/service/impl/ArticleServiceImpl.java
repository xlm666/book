package cn.edu.svtcc.service.impl;

import cn.edu.svtcc.dao.ArticleDao;
import cn.edu.svtcc.domain.ArticleDO;
import cn.edu.svtcc.service.ArticleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;

/**
 * articleService实现类
 */
@Service("ArticleService")
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleDao articleDao;

    /**
     *获取所有的文章列表
     * @return
     */
    @Override
    public ArrayList<ArticleDO> getAllArticle() {
        if (articleDao.getAllArticle()!=null){
            return articleDao.getAllArticle();
        }
        return null;
    }

    /**
     * 获取该id的文章信息
     * @param articleId
     * @return
     */
    @Override
    public ArticleDO findArticleById(Integer articleId) {
        if (articleDao.findArticleById(articleId)!=null) {
            return articleDao.findArticleById(articleId);
        }
        return null;
    }
}
