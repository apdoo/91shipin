package com.hexor.controller;

import com.hexor.repo.User;

import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-29
 * Time: 下午3:43
 * To change this template use File | Settings | File Templates.
 */
public class BaseController {
    public User getUserInfo(HttpSession session){
        return (User) session.getAttribute("userinfo");
    }
}
