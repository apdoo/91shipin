package com.hexor.repo;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 下午2:00
 * To change this template use File | Settings | File Templates.
 * 网站会员类
 */
public class User extends BasePojo{
    private int id; //会员id
    private String username="";//会员登录账号
    private String password=""; //会员登录密码
    private String email="";//会员email
    private String signupTime="";//注册时间
    private int points=100;//会员积分，初始积分100
    private int type=0;//会员类型 0，普通会员，1包月会员，2包季度会员，3包年会员，4永久会员，5管理员 ，-1被封禁会员
    private String loginIp="";//上次登录的ip
    private String loginTime="";//上次登录的时间
    private String temp;//临时标志，邮箱是否验证？


    public String getSignupTime() {
        return signupTime;
    }

    public void setSignupTime(String signupTime) {
        this.signupTime = signupTime;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public int getPoints() {
        return points;
    }

    public void setPoints(int points) {
        this.points = points;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getLoginIp() {
        return loginIp;
    }

    public void setLoginIp(String loginIp) {
        this.loginIp = loginIp;
    }

    public String getLoginTime() {
        return loginTime;
    }

    public void setLoginTime(String loginTime) {
        this.loginTime = loginTime;
    }

    public String getTemp() {
        return temp;
    }

    public void setTemp(String temp) {
        this.temp = temp;
    }
}
