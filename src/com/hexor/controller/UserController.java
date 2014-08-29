package com.hexor.controller;

import com.hexor.repo.User;
import com.hexor.service.impl.UserService;
import com.hexor.util.Configurer;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 下午4:10
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value="user")
public class UserController extends BaseController{
    @Autowired
    @Qualifier("com.hexor.service.impl.UserService")
    private UserService userService = null;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    /**
     * 注册接口，返回注册页面
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="signup")
    public ModelAndView signup(HttpSession session, ModelMap model){
        return new ModelAndView("signup");
    }

    /**
     * 登录接口
     * @param user
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="login")
    public ModelAndView login(User user,HttpSession session, ModelMap model){
        System.out.println("login"+user.getUsername());
        System.out.println("session"+ Configurer.getContextProperty("session.userinfo"));

        ModelAndView modelAndView=new ModelAndView("myhome") ;
        return modelAndView;

    }

    /**
     * 注册接口
     * @param session
     * @param model
     */
    @RequestMapping(value="toSignup")
    public void toSignup(HttpSession session, ModelMap model){
        System.out.println("to sign..");
    }

}