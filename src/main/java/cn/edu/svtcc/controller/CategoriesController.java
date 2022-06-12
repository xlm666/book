package cn.edu.svtcc.controller;

import cn.edu.svtcc.domain.BooksDO;
import cn.edu.svtcc.domain.CategoriesDO;
import cn.edu.svtcc.domain.PageBean;
import cn.edu.svtcc.service.BookService;
import cn.edu.svtcc.service.impl.CategoriesServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class CategoriesController {
    @Autowired
    CategoriesServiceImpl categoriesService;
    @Autowired
    BookService bookService;

    /**
     * 根据分类id获取图书列表
     * @param categoriesId
     * @param request
     * @return
     */
   @RequestMapping("/categories")
    public String getCategoriesBooks(Integer categoriesId, HttpServletRequest request,Integer pageIndex){
        int pageSize=2;
        request.getSession().setAttribute("categoriesId",categoriesId);
        request.setAttribute("state","categories");

        ArrayList<BooksDO> booksList=bookService.getCategoriesBooks(categoriesId);
        int totalRecord=booksList.size();
       System.out.println("totalRecord = " + totalRecord);
       PageBean pageBean=new PageBean(pageIndex,pageSize,totalRecord);
       pageBean.setList(booksList);
       System.out.println("pageBean = " + pageBean);
       System.out.println("pageBean.getList() = " + pageBean.getList());
       request.setAttribute("pageBean",pageBean);
       return "books";
    }
}
