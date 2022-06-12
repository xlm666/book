package cn.edu.svtcc.domain;

/**
 * 文章实体类，对应数据库article表
 */
public class ArticleDO {
    private Integer articleId;//文章id
    private String articleContent;//文章内容
    private String articleAuthor;//文章作者
    private String articleDate;//发布时间
    private String articleTitle;//标题
    private String articleImg;//图片
    private String articleSubtitle;//副标题

    public ArticleDO() {
    }

    public ArticleDO(Integer articleId, String articleContent, String articleAuthor, String articleDate, String articleTitle, String articleImg, String articleSubtitle) {
        this.articleId = articleId;
        this.articleContent = articleContent;
        this.articleAuthor = articleAuthor;
        this.articleDate = articleDate;
        this.articleTitle = articleTitle;
        this.articleImg = articleImg;
        this.articleSubtitle = articleSubtitle;
    }

    public Integer getArticleId() {
        return articleId;
    }

    public void setArticleId(Integer articleId) {
        this.articleId = articleId;
    }

    public String getArticleContent() {
        return articleContent;
    }

    public void setArticleContent(String articleContent) {
        this.articleContent = articleContent;
    }

    public String getArticleAuthor() {
        return articleAuthor;
    }

    public void setArticleAuthor(String articleAuthor) {
        this.articleAuthor = articleAuthor;
    }

    public String getArticleDate() {
        return articleDate;
    }

    public void setArticleDate(String articleDate) {
        this.articleDate = articleDate;
    }

    public String getArticleTitle() {
        return articleTitle;
    }

    public void setArticleTitle(String articleTitle) {
        this.articleTitle = articleTitle;
    }

    public String getArticleImg() {
        return articleImg;
    }

    public void setArticleImg(String articleImg) {
        this.articleImg = articleImg;
    }

    public String getArticleSubtitle() {
        return articleSubtitle;
    }

    public void setArticleSubtitle(String articleSubtitle) {
        this.articleSubtitle = articleSubtitle;
    }

    @Override
    public String toString() {
        return "ArticleDO{" +
                "articleId=" + articleId +
                ", articleContent='" + articleContent + '\'' +
                ", articleAuthor='" + articleAuthor + '\'' +
                ", articleDate='" + articleDate + '\'' +
                ", articleTitle='" + articleTitle + '\'' +
                ", articleImg='" + articleImg + '\'' +
                ", articleSubtitle='" + articleSubtitle + '\'' +
                '}';
    }
}
