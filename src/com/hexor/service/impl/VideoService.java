package com.hexor.service.impl;

import com.hexor.dao.IVideoMapper;
import com.hexor.repo.Pager;
import com.hexor.repo.VideoBean;
import com.hexor.service.IVideoService;
import com.hexor.util.EncodeUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Administrator
 * Date: 14-8-23
 * Time: 下午12:05
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.service.impl.VideoService")
public class VideoService implements IVideoService {
    @Autowired
    @Qualifier("com.hexor.dao.IVideoMapper")
    private IVideoMapper mapper;
    public void setMapper(IVideoMapper delegate) {
        this.mapper = delegate;
    }


    @Override
    public List<VideoBean> limit(Pager pager) {
        List<VideoBean> list= mapper.limit(pager);  //To change body of implemented methods use File | Settings | File Templates.
        //在此加密视频路径
        for(VideoBean bean:list){
            try {
                bean.setVideoId(EncodeUtil.encodeString(bean.getVideoId()));
            } catch (IOException e) {
                System.out.println("加密失败");
            }
        }
        return list;
    }

    @Override
    public long getVideosCount() {
        return mapper.getVideosCount();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public VideoBean selectByVideoId(String vid) {
        return mapper.selectByVideoId(vid);
    }

    @Override
    public List<VideoBean> selectRecently() {
        return mapper.selectRecently();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<VideoBean> selectRate() {
        return mapper.selectRate();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<VideoBean> selectFav() {
        return mapper.selectFav();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<VideoBean> selectViews() {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<VideoBean> selectRand() {
        return mapper.selectRand();  //To change body of implemented methods use File | Settings | File Templates.
    }
}