package com.hexor.service;

import com.hexor.repo.ProxyBean;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 15-1-3
 * Time: 上午11:47
 * To change this template use File | Settings | File Templates.
 */
public interface IProxyService {
    public ProxyBean getOneProxy();
    public void deleteProxy(String ip);
}
