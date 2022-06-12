package cn.edu.svtcc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import javax.servlet.http.HttpServletRequest;

/**
 * 首页控制类
 */
@Controller
public class IndexController {
    @RequestMapping({"/","/index"})
    public String index(){
        return "redirect:/article";
    }
}
