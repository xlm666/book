package cn.edu.svtcc.controller;

import cn.edu.svtcc.domain.CommentsDO;
import cn.edu.svtcc.domain.UsersDO;
import cn.edu.svtcc.service.UserService;
import cn.edu.svtcc.util.MD;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

/**
 * user的控制类，提供用户相关操作，并调整返回数据
 */
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    private UserService userService;

    /**
     * 用户登录操作
     * @param usersDO
     * @param request
     * @throws IOException
     */
    //post方法
    @RequestMapping(value = "/login",method = RequestMethod.POST)
    public String loginPost(UsersDO usersDO, HttpServletRequest request) throws IOException {
        usersDO.setUserPassword(MD.MD5(usersDO.getUserPassword()));
        UsersDO usersDO1=userService.login(usersDO);
        System.out.println(usersDO1);
        if (usersDO1!=null){
            request.getSession().setAttribute("Users",usersDO1);

            return "redirect:/index";
        }else {
            request.getSession().setAttribute("loginMsg","账号或密码错误");
            return "login";
        }

    }
    //get方法
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String loginGet(HttpSession session){
        return "login";
    }

    /**
     * 用户注册操作
     * @param usersDO
     * @param request
     * @return
     */
    //注册post方法
    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String registerPost(UsersDO usersDO,HttpServletRequest request){
        String code=(String) request.getSession().getAttribute("code");//session中的验证码
        String Code=request.getParameter("code");//网页传过来的验证码
        //获取页面传过来的数据
        String password1=request.getParameter("password1");
        //判断验证码是否正确
        if (code==null || "".equals(code)){
            request.getSession().setAttribute("registerMsg","验证码不能为空!");
            return "register";
        }
        if (!Code.equalsIgnoreCase(code)){
            request.getSession().setAttribute("registerMsg","验证码错误!");
            return "register";
        }
        //获取系统当前时间
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        java.util.Date date = new Date(System.currentTimeMillis());

        usersDO.setUserDate(df.format(date));
        usersDO.setUserPassword(MD.MD5(password1));
        usersDO.setUserImg("1.jpg");
        boolean register=userService.register(usersDO);
        if (register){
            return "login";
        }
        return "register";

    }

    //注册get方法
    @RequestMapping(value = "/register",method = RequestMethod.GET)
    public String registerGet(HttpSession session){
        session.removeAttribute("registerMsg");
        return "register";
    }

    /**
     * 修改用户密码
     * @param oldPassword 传过来的旧密码
     * @param newPassword1 新密码1
     * @param code 验证码
     * @param request 请求
     * @param response 响应
     * @throws IOException
     */
    @RequestMapping(value = "/editPassword",method = RequestMethod.POST)
    public String editPasswordPost(String oldPassword, String newPassword1, String code,HttpServletRequest request,HttpServletResponse response)throws IOException{
        request.getSession().removeAttribute("msg");
        //获取页面传过来的数据
        UsersDO user= (UsersDO) request.getSession().getAttribute("Users");
        String userName=user.getUserName();
        String code2= (String) request.getSession().getAttribute("code");

        //验证码是否正确
        if (code==null||"".equals(code)||code2==null){
            request.getSession().setAttribute("editPasswordMsg","验证码不能为空");
            return "editPassword";
        }
        if (!code.equalsIgnoreCase(code2)){
            request.getSession().setAttribute("editPasswordMsg","验证码错误");
            return "editPassword";
        }
        if (userService.editPassword(MD.MD5(newPassword1),userName,MD.MD5(oldPassword))){
            request.getSession().setAttribute("editPasswordMsg","修改成功");
        }else {
            request.getSession().setAttribute("editPasswordMsg","修改失败");
        }
        return "editPassword";
    }
    //修改密码get
    @RequestMapping(value = "/editPassword",method = RequestMethod.GET)
    public String editPasswordGet(HttpServletRequest request){
        //调用get方法后，清除session中msg中的内容
        request.getSession().removeAttribute("editPasswordMsg");
        return "editPassword";
    }

    /**
     * 用户重置密码操作
     * @param usersDO 保存在user实体类里的数据
     * @param code 验证码
     * @param newPassword1 新密码1
     * @param newPassword2 新密码2
     * @param request
     * @return
     */
    @RequestMapping(value = "/forget",method = RequestMethod.POST)
    public String forget(UsersDO usersDO,String code,String newPassword1,String newPassword2,HttpServletRequest request){
        //获取数据
        String userName=usersDO.getUserName();
        String userEmail=usersDO.getUserEmail();
        String code2= (String) request.getSession().getAttribute("code");
        //验证数据是否合法

        if (code==null||"".equals(code)){
            request.getSession().setAttribute("forgetMsg","验证码不能为空");
            return "forget";
        }
        if (!code.equalsIgnoreCase(code2)){
            request.getSession().setAttribute("forgetMsg","验证码错误");
            return "forget";
        }
        boolean a=userService.forget(MD.MD5(newPassword1),usersDO.getUserName(),usersDO.getUserEmail());
        if (a){
            return "login";
        }
        return "forget";
    }
    //重置密码get
    @RequestMapping(value = "/forget",method = RequestMethod.GET)
    public String forget(HttpServletRequest request){
        request.getSession().removeAttribute("forgetMsg");
        return "forget";

    }

    /**
     * 修改个人资料
     * @param usersDO
     * @param request
     * @return
     */
    @RequestMapping(value = "/personal",method = RequestMethod.POST)
    public String personalPost(UsersDO usersDO,HttpServletRequest request){
        //获取数据
        UsersDO usersDO1= (UsersDO) request.getSession().getAttribute("Users");
        String userName=usersDO1.getUserName();
        String userNickname=usersDO.getUserNickname();

        String userSex=usersDO.getUserSex();
        usersDO.setUserName(userName);
        usersDO1.setUserNickname(userNickname);
        usersDO1.setUserAge(usersDO.getUserAge());
        usersDO1.setUserSex(userSex);
        if (userService.personal(usersDO)) {
            request.getSession().setAttribute("Users",usersDO1);
            request.getSession().setAttribute("personalMsg","修改成功");
        }
        return "personal";
    }
    //get
    @RequestMapping(value = "/personal",method = RequestMethod.GET)
    public String personalGet(HttpSession session){
        session.removeAttribute("personalMsg");
        return "personal";
    }

    /**
     * 用户注销操作
     * @param session
     * @return
     */
    @RequestMapping("/logOut")
    public String logOut(HttpSession session){
        session.invalidate();
        return "redirect:index";
    }

    /**
     * 用户上传头像
     */
    @RequestMapping(value = "/file",method = RequestMethod.POST)
    public String txFile(HttpSession session,MultipartFile file) throws IOException{
        //浏览器传过来的文件名称
        String oldFileName=file.getOriginalFilename();
        //获取session中Users中的id
        UsersDO userDO= (UsersDO) session.getAttribute("Users");
        String filePath=session.getServletContext().getRealPath("/img/txImg");//生成文件在target中
//        String filePath="D:\\MyBatis\\SpringMVC2\\src\\main\\webapp\\img\\txImg";
        //新的文件名字，使用uuid随机生成数+原始图片名字，这样不会重复
        String newFileName = UUID.randomUUID().toString().replaceAll("-","")+
                oldFileName.substring(oldFileName.lastIndexOf("."));
        // 新图片
        File newFile = new File(filePath+"/"+newFileName);
        //文件不存在，则创建
        if(!newFile.exists()){
            newFile.mkdirs();//1.mkdir()只能创建一级目录，且父目录必须存在;2.mkdirs()可以直接创建多级目录
        }
        // 将内存中的数据写入磁盘
        file.transferTo(newFile);
        if (userService.txImg(newFileName,userDO.getUserId())) {
            userDO.setUserImg(newFileName);
            System.out.println("userDO.getUserImg() = " + userDO.getUserImg());
            session.setAttribute("Users",userDO);
        }
        return "redirect:personal";
    }
}
