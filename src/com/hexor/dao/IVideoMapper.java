package com.hexor.dao;

import com.hexor.repo.Pager;
import com.hexor.repo.VideoBean;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;


@Service("com.hexor.dao.IVideoMapper")
public interface IVideoMapper {
	//mysql��ҳ��ѯ
	public List<VideoBean> limit(Pager pager);
	//��ѯ������
	public long getVideosCount();
    //���id��ѯ
    public VideoBean selectByVideoId(String vid);
    public List<VideoBean> selectRecently();
    public List<VideoBean> selectRate();
    public List<VideoBean> selectFav();
    public List<VideoBean> selectViews();
    public List<VideoBean> selectRand();
    public void videoAddSelf(Map map);
}
