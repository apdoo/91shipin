package com.hexor.repo;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-20
 * Time: 下午4:56
 * To change this template use File | Settings | File Templates.
 */

public class VideoBean {
     private String title; //视频标题
     private String preImgSrc;//图片链接
     private String vedioUrl; //视频播放地址
     private String infotime;  //时长
     private String updatetime;//更新日期
     private int flag;        //是否采集标志    0表示未采集 1表示采集

    @Override
    public String toString() {
        return "VedioBean{" +
                "title='" + title + '\'' +
                ", preImgSrc='" + preImgSrc + '\'' +
                ", vedioUrl='" + vedioUrl + '\'' +
                ", infotime='" + infotime + '\'' +
                ", flag=" + flag +
                '}';
    }

    public VideoBean(String title, String preImgSrc, String vedioUrl, String infotime, String updatetime, int flag) {
        this.title = title;
        this.preImgSrc = preImgSrc;
        this.vedioUrl = vedioUrl;
        this.infotime = infotime;
        this.updatetime = updatetime;
        this.flag = flag;
    }


    public String getUpdatetime() {
        return updatetime;
    }

    public void setUpdatetime(String updatetime) {
        this.updatetime = updatetime;
    }

    public VideoBean() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getPreImgSrc() {
        return preImgSrc;
    }

    public void setPreImgSrc(String preImgSrc) {
        this.preImgSrc = preImgSrc;
    }

    public String getVedioUrl() {
        return vedioUrl;
    }

    public void setVedioUrl(String vedioUrl) {
        this.vedioUrl = vedioUrl;
    }

    public String getInfotime() {
        return infotime;
    }

    public void setInfotime(String infotime) {
        this.infotime = infotime;
    }

    public int getFlag() {
        return flag;
    }

    public void setFlag(int flag) {
        this.flag = flag;
    }
}
