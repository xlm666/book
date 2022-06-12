package cn.edu.svtcc.domain;

/**
 * 图书评论实体类，对应数据库comments
 */
public class CommentsDO {
    private Integer commentsId;//评论的Id
    private String commentsContent;//评论的内容
    private String commentsDate;//评论的时间
    private Integer commentsBookId;//图书的Id
    private Integer commentsUserId;//用户Id
    private String commentsUserNickname;//用户昵称
    private String commentsUserImg;//该评论的用户头像
    public CommentsDO() {
    }

    public CommentsDO(Integer commentsId, String commentsContent, String commentsDate, Integer commentsBookId, Integer commentsUserId, String commentsUserNickname, String commentsUserImg) {
        this.commentsId = commentsId;
        this.commentsContent = commentsContent;
        this.commentsDate = commentsDate;
        this.commentsBookId = commentsBookId;
        this.commentsUserId = commentsUserId;
        this.commentsUserNickname = commentsUserNickname;
        this.commentsUserImg = commentsUserImg;
    }

    public Integer getCommentsId() {
        return commentsId;
    }

    public void setCommentsId(Integer commentsId) {
        this.commentsId = commentsId;
    }

    public String getCommentsContent() {
        return commentsContent;
    }

    public void setCommentsContent(String commentsContent) {
        this.commentsContent = commentsContent;
    }

    public String getCommentsDate() {
        return commentsDate;
    }

    public void setCommentsDate(String commentsDate) {
        this.commentsDate = commentsDate;
    }

    public Integer getCommentsBookId() {
        return commentsBookId;
    }

    public void setCommentsBookId(Integer commentsBookId) {
        this.commentsBookId = commentsBookId;
    }

    public Integer getCommentsUserId() {
        return commentsUserId;
    }

    public void setCommentsUserId(Integer commentsUserId) {
        this.commentsUserId = commentsUserId;
    }

    public String getCommentsUserNickname() {
        return commentsUserNickname;
    }

    public void setCommentsUserNickname(String commentsUserNickname) {
        this.commentsUserNickname = commentsUserNickname;
    }

    public String getCommentsUserImg() {
        return commentsUserImg;
    }

    public void setCommentsUserImg(String commentsUserImg) {
        this.commentsUserImg = commentsUserImg;
    }

    @Override
    public String toString() {
        return "CommentsDO{" +
                "commentsId=" + commentsId +
                ", commentsContent='" + commentsContent + '\'' +
                ", commentsDate='" + commentsDate + '\'' +
                ", commentsBookId=" + commentsBookId +
                ", commentsUserId=" + commentsUserId +
                ", commentsUserNickname='" + commentsUserNickname + '\'' +
                ", commentsUserImg='" + commentsUserImg + '\'' +
                '}';
    }
}
