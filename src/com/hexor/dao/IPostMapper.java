package com.hexor.dao;

import com.hexor.repo.Pager;
import com.hexor.repo.PostBean;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-5
 * Time: 下午4:35
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.dao.IPostMapper")
public interface IPostMapper {
     public List<PostBean> getAllPost();
     public void insertPost(PostBean bean);
     public long getPostsCount();
     public List<PostBean> limit(Pager pager);
     public PostBean getPostBean(String id);
}
