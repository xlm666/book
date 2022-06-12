package cn.edu.svtcc.dao;

import cn.edu.svtcc.domain.BooksDO;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import java.util.ArrayList;

/**
 * BookDao接口提供图书相关操作
 */
@Repository("BookDao")
public interface BookDao {
    /**
     * 获取数据
     * @return
     */
    @Select("select * from book")
    @Results(id = "BookDao", value = {
            @Result(id = true, column = "book_id", property = "bookId"),
            @Result(column = "book_name", property = "bookName"),
            @Result(column = "book_author", property = "bookAuthor"),
            @Result(column = "book_img", property = "bookImg"),
            @Result(column = "book_translators", property = "bookTranslators"),
            @Result(column = "book_content", property = "bookContent"),
            @Result(column = "book_author_introduce", property = "bookAuthorIntroduce"),
            @Result(column = "categories_id", property = "categoriesId")
    })
    ArrayList<BooksDO> getAllBooks();

    /**
     * 根据bookId查询图书信息
     *
     * @param bookId
     * @return
     */
    @Select("select * from book where book_id=#{bookId}")
    @ResultMap("BookDao")
    BooksDO findBookById(Integer bookId);
    /**
     * 根据分类Id查询图书信息
     *
     * @param categoriesId
     * @return
     */
    @Select("select * from book where categories_id=#{categoriesId}")
    @ResultMap("BookDao")
    ArrayList<BooksDO> getCategoriesBooks(@Param("categoriesId") Integer categoriesId);

    /**
     * 搜索图书
     */
    @Select("select * from book where book_name like concat('%',#{content},'%')")
    @ResultMap("BookDao")
    ArrayList<BooksDO> searchBookList(String content);
}
