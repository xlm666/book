package cn.edu.svtcc.service.impl;

import cn.edu.svtcc.dao.BookDao;
import cn.edu.svtcc.domain.BooksDO;
import cn.edu.svtcc.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.ArrayList;

/**
 * bookService接口实现类
 */
@Service("BookService")
public class BookServiceImpl implements BookService {
    @Autowired
    private BookDao bookDao;

    /**
     * 获取图书
     * @return
     */
    @Override
    public ArrayList<BooksDO> getAllBooks() {
        if (bookDao.getAllBooks()!=null){
            return bookDao.getAllBooks();
        }
        return null;
    }

    /**
     * 通过bookId查询图书信息
     * @param bookId
     * @return
     */
    @Override
    public BooksDO findBookById(Integer bookId) {
        if (bookDao.findBookById(bookId)!=null){
            return bookDao.findBookById(bookId);
        }
        return null;
    }
    @Override
    public ArrayList<BooksDO> getCategoriesBooks(Integer categoriesId) {
        if (bookDao.getCategoriesBooks(categoriesId)!=null) {
            return bookDao.getCategoriesBooks(categoriesId);
        }
        return null;
    }

    @Override
    public ArrayList<BooksDO> searchBookList(String content) {
        if (bookDao.searchBookList(content)!=null) {
            return bookDao.searchBookList(content);
        }
        return null;
    }

}
