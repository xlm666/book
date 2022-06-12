package cn.edu.svtcc.service;

import cn.edu.svtcc.domain.CommentsDO;
import java.util.ArrayList;

/**
 * comments接口
 */
public interface CommentsService {
    /**
     * 根据bookId获取该图书的所有评论
     * @param bookId
     * @return
     */
    ArrayList<CommentsDO> getAllBookComments(Integer bookId);

    /**
     * 添加评论
     * @param commentsDO
     * @return
     */
    boolean addComments(CommentsDO commentsDO);

    /**
     * 删除评论
     * @param commentsId
     * @return
     */
    boolean deleteComments(Integer commentsId);

    /**
     * comments user 两表保持一致
     * @return
     */
    boolean updateData();
}
