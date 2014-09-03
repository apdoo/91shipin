package com.hexor.service;

import com.hexor.repo.Pager;
import com.hexor.repo.VideoBean;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 14-8-23
 * Time: 下午12:06
 * To change this template use File | Settings | File Templates.
 */
public interface IVideoService {
    //mysql分页查询
    public List<VideoBean> limit(Pager pager);
    //查询总条数
    public long getVideosCount();
    //获得视频信息
    public VideoBean selectByVideoId(String vid);
    public List<VideoBean> selectRecently();
    public List<VideoBean> selectRate();
    public List<VideoBean> selectFav();
    public List<VideoBean> selectViews();
    public List<VideoBean> selectRand();
}
