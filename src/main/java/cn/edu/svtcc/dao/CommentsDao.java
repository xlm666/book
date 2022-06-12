package cn.edu.svtcc.dao;

import cn.edu.svtcc.domain.CommentsDO;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import java.util.ArrayList;

/**
 * 评论接口,实现用户的评论功能
 */
@Repository("CommentsDao")
public interface CommentsDao {
    //根据图书id查询关于此图书的评论
    @Select("select * from comments where comments_book_id=#{bookId}")
    @Results(id = "Comments",value = {
            @Result(id = true,column = "comments_id",property = "commentsId"),
            @Result(column = "comments_book_id",property = "commentsBookId"),
            @Result(column = "comments_content",property = "commentsContent"),
            @Result(column = "comments_date",property = "commentsDate"),
            @Result(column = "comments_user_nickname",property = "commentsUserNickname"),
            @Result(column = "comments_user_img",property = "commentsUserImg"),
            @Result(column = "comments_user_id",property = "commentsUserId")
    })
    ArrayList<CommentsDO> getAllBookComments(Integer bookId);
    //添加评论
    @Insert("insert into comments (comments_content,comments_date,comments_user_id,comments_user_nickname,comments_user_img,comments_book_id) values(" +
            "#{commentsContent},#{commentsDate},#{commentsUserId},#{commentsUserNickname},#{commentsUserImg},#{commentsBookId})")
    Integer addComments(CommentsDO commentsDO);
    //删除评论
    @Delete("DELETE FROM comments WHERE comments_id=#{commentsId}")
    Integer deleteComments(Integer commentsId);

    //使comments表中的数据与users表中一致
    @Update("update users u,comments c set c.comments_user_nickname=u.user_nickname,c.comments_user_img=u.user_img where u.user_id=c.comments_user_id")
    Integer updateData();
}
