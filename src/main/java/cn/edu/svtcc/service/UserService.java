package cn.edu.svtcc.service;
import cn.edu.svtcc.domain.UsersDO;

/**
 * 用户接口
 */
public interface UserService {
    //登录
    UsersDO login(UsersDO usersDO);
    //注册
    boolean register(UsersDO usersDO);
    //根据用户名查询信息
    UsersDO findUserById(String userName);
    //修改用户密码
    boolean editPassword(String newPassword,String userName,String userPassword);
    //重置用户密码
    boolean forget(String newPassword,String userName,String userEmail);
    //修改个人信息
    boolean personal(UsersDO usersDO);
    //上传修改头像
    boolean txImg(String userImg,Integer userId);
}
