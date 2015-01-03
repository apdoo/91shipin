package com.hexor.service.impl;

import com.hexor.dao.IProxyMapper;
import com.hexor.repo.ProxyBean;
import com.hexor.service.IProxyService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 15-1-3
 * Time: 上午11:47
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.service.impl.ProxyService")
public class ProxyService implements IProxyService {
    @Autowired
    @Qualifier("com.hexor.dao.IProxyMapper")
    private IProxyMapper mapper;
    public void setMapper(IProxyMapper delegate) {
        this.mapper = delegate;
    }
    @Override
    public ProxyBean getOneProxy() {
        return mapper.getOneProxy();
    }

    @Override
    public void deleteProxy(String ip) {
        mapper.deleteProxy(ip);
    }
}
