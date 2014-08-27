package com.hexor.dao;

import com.hexor.repo.Pager;
import com.hexor.repo.User;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 下午2:49
 * To change this template use File | Settings | File Templates.
 */
@Service("com.hexor.dao.IUserMapper")
public interface IUserMapper {

    public List<User> getAllUser();

    public User checkUser(String username);

    public void insertUser(User user);

    public List<User> limit(Pager pager);
    public long getUsersCount();

}
