package com.hexor.service.impl;

import com.hexor.dao.IPostMapper;
import com.hexor.repo.Pager;
import com.hexor.repo.PostBean;
import com.hexor.service.IPostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-5
 * Time: 下午4:50
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.service.impl.PostService")
public class PostService implements IPostService {

    @Autowired
    @Qualifier("com.hexor.dao.IPostMapper")
    private IPostMapper mapper;
    public void setMapper(IPostMapper delegate) {
        this.mapper = delegate;
    }


    @Override
    public List<PostBean> getAllPost() {
        return mapper.getAllPost();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void insertPost(PostBean bean) {
        mapper.insertPost(bean);
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public long getPostsCount() {
        return mapper.getPostsCount();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<PostBean> limit(Pager pager) {
        return mapper.limit(pager);  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public PostBean getPostBean(String id) {
        return mapper.getPostBean(id);  //To change body of implemented methods use File | Settings | File Templates.
    }
}
