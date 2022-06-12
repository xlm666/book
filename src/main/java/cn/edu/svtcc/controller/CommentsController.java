package cn.edu.svtcc.controller;

import cn.edu.svtcc.domain.CommentsDO;
import cn.edu.svtcc.domain.UsersDO;
import cn.edu.svtcc.service.CommentsService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
public class CommentsController {
    @Autowired
    private CommentsService commentsService;
    //当返回类型为void的时候，则响应的视图页面为对应着的访问地址，即@RequestMapping指定的地址
    @RequestMapping(value = "/addComments",method = RequestMethod.POST)
    public String addCommentsPost(String commentsContent, HttpServletRequest request){

        //获取数据
        UsersDO usersDO= (UsersDO) request.getSession().getAttribute("Users");
        Integer commentsBookId= (Integer) request.getSession().getAttribute("bookId");
        if (usersDO==null){
            return "login";
        }
        Integer commentsUserId=usersDO.getUserId();
        System.out.println("commentsUserId = " + commentsUserId);
        //获取系统当前时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        java.util.Date date = new Date(System.currentTimeMillis());

        String commentsDate= df.format(date);
        //添加数据到commentsDO中
        CommentsDO commentsDO=new CommentsDO();
        commentsDO.setCommentsContent(commentsContent);
        commentsDO.setCommentsUserId(commentsUserId);
        commentsDO.setCommentsBookId(commentsBookId);
        commentsDO.setCommentsDate(commentsDate);
        commentsDO.setCommentsUserNickname(usersDO.getUserNickname());
        commentsDO.setCommentsUserImg(usersDO.getUserImg());

        if (commentsService.addComments(commentsDO)){
            System.out.println("评论成功");
        }
        return "redirect:book?id="+commentsBookId;
    }
    @RequestMapping(value = "/addComments",method = RequestMethod.GET)
    public void addCommentsGet(HttpServletResponse response){
        response.setContentType("text/html;charset=utf-8");
        try {
            response.getWriter().println("非法访问!");
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @RequestMapping("/deleteComments")
    public String deleteComments(Integer commentsId,HttpSession session){
        Integer commentsBookId= (Integer) session.getAttribute("bookId");
        if (commentsService.deleteComments(commentsId)) {
            System.out.println("删除成功");
        }
        return "redirect:book?id="+commentsBookId;
    }
}
