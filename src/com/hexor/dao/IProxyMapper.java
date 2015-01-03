package com.hexor.dao;

import com.hexor.repo.ProxyBean;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 15-1-3
 * Time: 上午11:42
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.dao.IProxyMapper")
public interface IProxyMapper {
    public ProxyBean getOneProxy();
    public void deleteProxy(String ip);
}
