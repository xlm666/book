package cn.edu.svtcc.controller;

import cn.edu.svtcc.domain.BooksDO;
import cn.edu.svtcc.domain.CategoriesDO;
import cn.edu.svtcc.domain.CommentsDO;
import cn.edu.svtcc.domain.PageBean;
import cn.edu.svtcc.service.BookService;
import cn.edu.svtcc.service.CommentsService;
import cn.edu.svtcc.service.impl.CategoriesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class BookController {
    ArrayList<BooksDO> bookList;
    @Autowired
    private BookService bookService;
    @Autowired
    private CommentsService commentsService;
    @Autowired
    CategoriesServiceImpl categoriesService;
    /**
     * 显示图书列表
     * @param pageIndex
     * @param request
     * @return
     */
    @RequestMapping("/bookList")
    public String getAllBooks(int pageIndex, HttpServletRequest request) {
        int pageSize = 5;
        //获取图书列表
        bookList = bookService.getAllBooks();
        int totalRecord=bookList.size();
        //获取图书分类类名列表
        ArrayList<CategoriesDO> categoriesDOS=categoriesService.categoriesList();
        PageBean pageBean=new PageBean(pageIndex,pageSize,totalRecord);

        pageBean.setList(bookList);
        request.setAttribute("pageBean", pageBean);
        request.setAttribute("state", "bookList");
        if (categoriesDOS!=null) {
            request.getSession().setAttribute("categoriesList",categoriesDOS);
        }else {
            System.out.println("查询的数据为空");
        }
        return "books";
    }

    /**
     * 显示图书详细信息，和用户评论
     * @param id
     * @param request
     * @return
     */
    @RequestMapping("/book")
    public String findBookById(Integer id, HttpServletRequest request) {
        BooksDO booksDO = bookService.findBookById(id);
        commentsService.updateData();
        //获取bookId相关的评论
        ArrayList<CommentsDO> commentsDOS=commentsService.getAllBookComments(id);
        //将获取到的图书详细信息，保存到request域中
        request.setAttribute("Book", booksDO);
        //将获取到的图书评论，保存到request域中
        request.setAttribute("comments",commentsDOS);
        //将bookId存到session中，提供评论功能使用
        request.getSession().setAttribute("bookId",booksDO.getBookId());
        return "bookDetail";
    }
    @RequestMapping(value = "/searchBookList",method = RequestMethod.POST)
    public String searchBookList(String content,HttpServletRequest request,Integer pageIndex){
        bookList= bookService.searchBookList(content);
        int totalRecord=bookList.size();
        PageBean pageBean=new PageBean(pageIndex,2,totalRecord);
        pageBean.setList(bookList);
        request.setAttribute("state","search");
        if (bookList.isEmpty()){
            request.getSession().setAttribute("msg","查询不到相关图书");
            return "redirect:index";
        }
        request.getSession().setAttribute("content",content);
        request.setAttribute("pageBean", pageBean);
        return "books";
    }
    @RequestMapping(value = "searchBookList",method = RequestMethod.GET)
    public String searchBookList(Integer pageIndex, HttpServletRequest request){
        PageBean pageBean=new PageBean(pageIndex,2,bookList.size());
        pageBean.setList(bookList);
        request.setAttribute("state","search");
        request.setAttribute("pageBean", pageBean);
        return "books";
    }
}
