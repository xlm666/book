package cn.edu.svtcc.service;

import cn.edu.svtcc.domain.BooksDO;
import com.github.pagehelper.Page;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import java.util.ArrayList;

/**
 * 图书接口
 */
public interface BookService {
    //获取全部图书列表
    ArrayList<BooksDO> getAllBooks();
    //通过id查询图书信息
    BooksDO findBookById(Integer bookId);
    //根据categoriesId查询
    ArrayList<BooksDO> getCategoriesBooks(Integer categoriesId);
    //搜索查询图书列表
    ArrayList<BooksDO> searchBookList(String content);
}
