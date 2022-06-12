package cn.edu.svtcc.dao;

import cn.edu.svtcc.domain.UsersDO;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

/**
 * UserDao接口提供用户相关操作
 */
@Repository("userDao1")
public interface UserDao {
    //用户登录;Results:将查询的数据字段映射到UserDO
    @Select("select * from users where user_name=#{userName} and user_password=#{userPassword}")
    @Results(id="userDao",value = {
            @Result(id = true,column = "user_id",property = "userId"),
            @Result(column = "user_name",property = "userName"),
            @Result(column = "user_email",property = "userEmail"),
            @Result(column = "user_password",property = "userPassword"),
            @Result(column = "user_date",property = "userDate"),
            @Result(column = "user_nickname",property = "userNickname"),
            @Result(column = "user_age",property = "userAge"),
            @Result(column = "user_sex",property = "userSex"),
            @Result(column = "user_img",property = "userImg")
    })
    UsersDO Login(UsersDO usersDO);

    //注册用户
    @Insert("insert into users (user_name,user_email,user_password,user_date,user_nickname,user_age,user_sex,user_img)" +
            "values(#{userName},#{userEmail},#{userPassword},#{userDate},'昵称',0,'保密','head.jpg')")
    boolean register(UsersDO usersDO);


    //根据userName查找用户信息
    @Select("select * from users where user_name=#{userName}")
    @ResultMap("userDao")
    UsersDO findUserById(String userName);

    //更改用户密码
    @Update("update users set user_password=#{newPassword} where user_name=#{userName} and user_password=#{userPassword}")
    int editPassword(@Param("newPassword") String newPassword,@Param("userName") String userName,@Param("userPassword") String userPassword);

    //用户根据用户名和邮箱重置密码
    @Update("update users set user_password=#{newPassword} where user_name=#{userName} and user_email=#{userEmail}")
    int forget(@Param("newPassword") String newPassword,@Param("userName") String userName,@Param("userEmail") String userEmail);

    //用户更改用户信息
    @Update("update users set user_sex=#{userSex},user_age=#{userAge},user_nickname=#{userNickname} where user_name=#{userName}")
    int personal(UsersDO usersDO);

    //用户修改上传头像
    @Update("update users set user_img=#{userImg} where user_id=#{userId}")
    int txImg(@Param("userImg") String userImg,@Param("userId") Integer userId);
}
