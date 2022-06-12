package cn.edu.svtcc.domain;

/**
 * 用户的实体类，对应数据库的users表
 */
public class UsersDO {
    private Integer userId;//用户Id
    private String userName;//用户名
    private String userEmail;//用户邮箱
    private String userPassword;//用户密码
    private String userDate;//用户注册时间
    private String userNickname;//用户昵称
    private Integer userAge;//用户年龄
    private String userSex;//用户性别
    private String userImg;//用户头像

    public UsersDO() {
    }

    public UsersDO(Integer userId, String userName, String userEmail, String userPassword, String userDate, String userNickname, Integer userAge, String userSex, String userImg) {
        this.userId = userId;
        this.userName = userName;
        this.userEmail = userEmail;
        this.userPassword = userPassword;
        this.userDate = userDate;
        this.userNickname = userNickname;
        this.userAge = userAge;
        this.userSex = userSex;
        this.userImg = userImg;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserDate() {
        return userDate;
    }

    public void setUserDate(String userDate) {
        this.userDate = userDate;
    }

    public String getUserNickname() {
        return userNickname;
    }

    public void setUserNickname(String userNickname) {
        this.userNickname = userNickname;
    }

    public Integer getUserAge() {
        return userAge;
    }

    public void setUserAge(Integer userAge) {
        this.userAge = userAge;
    }

    public String getUserSex() {
        return userSex;
    }

    public void setUserSex(String userSex) {
        this.userSex = userSex;
    }

    public String getUserImg() {
        return userImg;
    }

    public void setUserImg(String userImg) {
        this.userImg = userImg;
    }

    @Override
    public String toString() {
        return "UsersDO{" +
                "userId=" + userId +
                ", userName='" + userName + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", userDate='" + userDate + '\'' +
                ", userNickname='" + userNickname + '\'' +
                ", userAge=" + userAge +
                ", userSex='" + userSex + '\'' +
                ", userImg='" + userImg + '\'' +
                '}';
    }
}
