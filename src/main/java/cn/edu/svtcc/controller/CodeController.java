package cn.edu.svtcc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.rmi.ServerException;

/**
 * 加载验证码的控制类
 */
@Controller
public class CodeController {
    @RequestMapping(value = "/code")
    private void code(HttpServletRequest request, HttpServletResponse response) throws IOException {
        //生成图片
        BufferedImage image=new BufferedImage(200,40,BufferedImage.TYPE_3BYTE_BGR);
        Graphics g=image.getGraphics();
        //产生文字
        String chars="0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
        String code="";
        for (int i=0;i<4;i++){
            int pos=(int)(Math.random()*chars.length());
            char ch=chars.charAt(pos);//charAt() 方法用于返回指定索引处的字符
            code=code+ch+" ";
        }
        request.getSession().setAttribute("code",code.replaceAll(" ",""));

        //绘制文字
        g.setColor(Color.white);
        g.setFont(new Font("仿宋",Font.ITALIC|Font.BOLD,30));
        g.drawString(code,50,30);

        //绘制干扰点
        for(int i=0;i<=300;i++){
            int x=(int) (Math.random()*200);
            int y=(int) (Math.random()*40);
            g.drawOval(x,y,1,1);
        }
        g.dispose();
        //将图片发送给浏览器
        ByteArrayOutputStream bos=new ByteArrayOutputStream();
        ImageIO.write(image,"JPEG",bos);
        byte[] buf=bos.toByteArray();
        response.getOutputStream().write(buf);

    }
}
