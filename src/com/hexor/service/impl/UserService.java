package com.hexor.service.impl;

import com.hexor.dao.IUserMapper;
import com.hexor.repo.Pager;
import com.hexor.repo.User;
import com.hexor.service.IUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 下午4:08
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.service.impl.UserService")
public class UserService implements IUserService {

    @Autowired
    @Qualifier("com.hexor.dao.IUserMapper")
    private IUserMapper mapper;
    public void setMapper(IUserMapper delegate) {
        this.mapper = delegate;
    }
    @Override
    public List<User> getAllUser() {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public User checkUser(String username) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void insertUser(User user) {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public List<User> limit(Pager pager) {
        return null;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public long getUsersCount() {
        return 0;  //To change body of implemented methods use File | Settings | File Templates.
    }
}
