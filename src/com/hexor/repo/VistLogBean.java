package com.hexor.repo;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-11
 * Time: 下午3:11
 * To change this template use File | Settings | File Templates.
 * 访问网站的日志bean
 */
public class VistLogBean {
    private int id;
    private String username="anonymous";//当前访问的用户名，默认是匿名用户
    private String ip;//当前访问者的ip地址
    private String url;//当前访问的url
    private String time;//访问时间

    @Override
    public String toString() {
        return "VistLogBean{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", ip='" + ip + '\'' +
                ", url='" + url + '\'' +
                ", time='" + time + '\'' +
                '}';
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

    public String getIp() {
        return ip;
    }

    public void setIp(String ip) {
        this.ip = ip;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }
}
