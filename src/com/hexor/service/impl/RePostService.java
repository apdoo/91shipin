package com.hexor.service.impl;

import com.hexor.dao.IRePostMapper;
import com.hexor.repo.Pager;
import com.hexor.repo.RePostBean;
import com.hexor.service.IRePoestService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-5
 * Time: 下午5:11
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.service.impl.RePostService")
public class RePostService implements IRePoestService {

    @Autowired
    @Qualifier("com.hexor.dao.IRePostMapper")
    private IRePostMapper mapper;
    public void setMapper(IRePostMapper delegate) {
        this.mapper = delegate;
    }

    @Override
    public List<RePostBean> getAllRePost() {
        return mapper.getAllRePost();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void insertRePost(RePostBean bean) {
        //To change body of implemented methods use File | Settings | File Templates.
        mapper.insertRePost(bean);
    }

    @Override
    public long getRePostsCount() {
        return mapper.getRePostsCount();  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<RePostBean> limit(Pager pager) {
        return mapper.limit(pager);  //To change body of implemented methods use File | Settings | File Templates.
    }
}
