package com.hexor.service;

import com.hexor.repo.Pager;
import com.hexor.repo.RePostBean;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-5
 * Time: 下午5:09
 * To change this template use File | Settings | File Templates.
 */
public interface IRePoestService {
    public List<RePostBean> getAllRePost();
    public void insertRePost(RePostBean bean);
    public long getRePostsCount();
    public List<RePostBean> limit(Pager pager);
}
