package cn.edu.svtcc.service.impl;

import cn.edu.svtcc.dao.UserDao;
import cn.edu.svtcc.domain.UsersDO;
import cn.edu.svtcc.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 *用户接口实现类
 */
@Service("UserService")
public class UserServiceImpl implements UserService {
    //注入UserDao对象
    @Autowired
    private UserDao userDao1;

    /**
     * 用户登录
     * @param usersDO
     * @return
     */
    @Override
    public UsersDO login(UsersDO usersDO) {
        return userDao1.Login(usersDO);
    }

    /**
     * 用户注册
     * @param usersDO
     * @return
     */
    @Override
    public boolean register(UsersDO usersDO) {
        if (userDao1.register(usersDO)){
            return true;
        }
        return false;
    }

    /**
     * 根据userName查找用户信息
     * @param userName
     * @return
     */
    @Override
    public UsersDO findUserById(String userName) {
        System.out.println("userDao1.findUserById(userName) = " + userDao1.findUserById(userName));
        if (userDao1.findUserById(userName)!=null){
            return userDao1.findUserById(userName);
        }
        return null;
    }

    /**
     * 修改用户密码
     * @param newPassword
     * @param userName
     * @param userPassword
     * @return
     */
    @Override
    public boolean editPassword(String newPassword,String userName, String userPassword) {
        if (userDao1.editPassword(newPassword,userName,userPassword)>0){
            return true;
        }
        return false;
    }

    /**
     * 用户忘记密码，重置密码
     * @param newPassword
     * @param userName
     * @param userEmail
     * @return
     */
    @Override
    public boolean forget(String newPassword, String userName, String userEmail) {
        if (userDao1.forget(newPassword,userName,userEmail)>0){
            return true;
        }
        return false;
    }

    /**
     * 修改用户个人资料
     * @param usersDO
     * @return
     */
    @Override
    public boolean personal(UsersDO usersDO) {
        if (userDao1.personal(usersDO)>0){
            return true;
        }
        return false;
    }

    /**
     * 修改用户头像
     * @param userImg
     * @param userId
     * @return
     */
    @Override
    public boolean txImg(String userImg, Integer userId) {
        if (userDao1.txImg(userImg,userId)>0) {
            return true;
        }
        return false;
    }
}
