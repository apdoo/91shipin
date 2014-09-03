package com.hexor.dao;

import com.hexor.repo.Pager;
import com.hexor.repo.VideoBean;
import org.springframework.stereotype.Service;

import java.util.List;


@Service("com.hexor.dao.IVideoMapper")
public interface IVideoMapper {
	//mysql分页查询
	public List<VideoBean> limit(Pager pager);
	//查询总条数
	public long getVideosCount();
    //根据id查询
    public VideoBean selectByVideoId(String vid);
    public List<VideoBean> selectRecently();
    public List<VideoBean> selectRate();
    public List<VideoBean> selectFav();
    public List<VideoBean> selectViews();
    public List<VideoBean> selectRand();
}
