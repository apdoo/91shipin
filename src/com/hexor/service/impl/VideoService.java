package com.hexor.service.impl;

import com.hexor.dao.IVideoMapper;
import com.hexor.repo.Pager;
import com.hexor.repo.VideoBean;
import com.hexor.service.IVideoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

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
        return mapper.limit(pager);  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public long getVideosCount() {
        return mapper.getVideosCount();  //To change body of implemented methods use File | Settings | File Templates.
    }
}
