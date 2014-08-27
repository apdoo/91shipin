package com.hexor.controller;

import com.hexor.repo.User;
import com.hexor.service.impl.UserService;
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
public class UserController {
    @Autowired
    @Qualifier("com.hexor.service.impl.UserService")
    private UserService userService = null;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping(value="signup")
    public String signup(HttpSession session, ModelMap model){
        System.out.println("**"+userService.getUsersCount());
        return "signup";
    }

    @RequestMapping(value="login")
    public ModelAndView login(User user,HttpSession session, ModelMap model){
        Map modelMap =new HashMap();
        modelMap.put("user",user);
        System.out.println("login"+user.getUsername());
        return new ModelAndView("myhome",modelMap);
    }

    @RequestMapping(value="toSignup")
    public void toSignup(HttpSession session, ModelMap model){
        System.out.println("to sign..");

    }
}
