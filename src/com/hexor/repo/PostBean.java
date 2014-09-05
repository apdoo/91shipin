package com.hexor.repo;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-3
 * Time: 下午2:01
 * To change this template use File | Settings | File Templates.
 * 公告类
 */
public class PostBean {
    private int id;  //帖子主键
    private int type;//0属于管理员发布的公告，1属于加精的帖子，2属于用户发布的普通帖子
    private String username;//发布公告的作者用户
    private String time;//发布公告的时间
    private String title;//公告主题
    private String content;//公告内容
    private int postindex=0;//公告排序索引
    private int status=0;//帖子状态 0属于未审核 1属于正常 2属于被锁定 3属于逻辑删除

    //--关联帖子回复记录表查询
    private int reNum;//帖子被回复数
    private String reTime;//帖子最后回复时间
    private String reUser;//帖子最后回复的用户名

    @Override
    public String toString() {
        return "PostBean{" +
                "id=" + id +
                ", type=" + type +
                ", username='" + username + '\'' +
                ", time='" + time + '\'' +
                ", title='" + title + '\'' +
                ", content='" + content + '\'' +
                ", postindex=" + postindex +
                ", status=" + status +
                ", reNum=" + reNum +
                ", reTime='" + reTime + '\'' +
                ", reUser='" + reUser + '\'' +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getType() {
        return type;
    }

    public void setType(int type) {
        this.type = type;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getPostindex() {
        return postindex;
    }

    public void setPostindex(int postindex) {
        this.postindex = postindex;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public int getReNum() {
        return reNum;
    }

    public void setReNum(int reNum) {
        this.reNum = reNum;
    }

    public String getReTime() {
        return reTime;
    }

    public void setReTime(String reTime) {
        this.reTime = reTime;
    }

    public String getReUser() {
        return reUser;
    }

    public void setReUser(String reUser) {
        this.reUser = reUser;
    }
}
