package com.hexor.service;

import com.hexor.repo.Pager;
import com.hexor.repo.User;

import java.util.List;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 下午3:06
 * To change this template use File | Settings | File Templates.
 */
public interface IUserService {

    public List<User> getAllUser();

    public User checkUser(String username);

    public void insertUser(User user);

    public List<User> limit(Pager pager);
    public long getUsersCount();
    public User checkLogin(User user);
    public void loginUpdate(User user);
    public User getUserByUsername(String id);
    public void reducePointsById(String id);
    public void updateUser(User user);
    public User getUserById(String id);
    public List<User> getUserByType();
}
