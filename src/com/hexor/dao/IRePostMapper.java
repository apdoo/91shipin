package com.hexor.dao;

import com.hexor.repo.Pager;
import com.hexor.repo.RePostBean;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-5
 * Time: 下午5:00
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.dao.IRePostMapper")
public interface IRePostMapper {
    public List<RePostBean> getAllRePost();
    public void insertRePost(RePostBean bean);
    public long getRePostsCount();
    public List<RePostBean> limit(Pager pager);
}
