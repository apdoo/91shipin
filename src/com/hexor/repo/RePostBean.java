package com.hexor.repo;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-4
 * Time: 下午5:58
 * To change this template use File | Settings | File Templates.
 * 帖子关联回复对象
 */
public class RePostBean {
    private int id;
    private int postid;//回复的帖子的id(对应数据库帖子表的主键)
    private String username;//回复人
    private String rePostTime;//回复时间
    private String content;//回复内容
    private int status;//回复状态 0正常 1锁定 2删除

    @Override
    public String toString() {
        return "RePostBean{" +
                "id=" + id +
                ", postid=" + postid +
                ", username='" + username + '\'' +
                ", rePostTime='" + rePostTime + '\'' +
                ", content='" + content + '\'' +
                ", status=" + status +
                '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getPostid() {
        return postid;
    }

    public void setPostid(int postid) {
        this.postid = postid;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getRePostTime() {
        return rePostTime;
    }

    public void setRePostTime(String rePostTime) {
        this.rePostTime = rePostTime;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }
}
