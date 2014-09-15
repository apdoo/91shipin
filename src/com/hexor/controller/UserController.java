package com.hexor.controller;

import com.hexor.repo.User;
import com.hexor.service.impl.UserService;
import com.hexor.util.*;
import org.apache.http.HttpResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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

    /**
     * 返回注册页面
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="signup")
    public ModelAndView signup(HttpSession session, ModelMap model){
        return new ModelAndView("signup");
    }

    /**
     * 登出接口
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="loginout")
    public ModelAndView loginout(HttpSession session, ModelMap model){
        session.removeAttribute((String) Configurer.getContextProperty("session.userinfo"));
        return new ModelAndView("home");
    }
    /**
     * 返回我的主页
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="myhome")
    public ModelAndView myhome(HttpSession session, ModelMap model){
        return new ModelAndView("myhome");
    }
    /**
     * 登录接口
     * @return
     */
    @RequestMapping(value="login")
    public ModelAndView login(User user,HttpSession session,HttpServletRequest request){
        User result=userService.checkLogin(user);
        //当数据库检验用户名密码
        if(result==null){
            Map map=ModelMapUtil.getMsg("用户名或密码错误!");
            return new ModelAndView("messagetip",map);
        }
        //登录成功
        try{
            result.setLoginIp(IpUtil.getIpAddr(request));
            result.setLoginTime(DateUtil.getStrOfDateTime());
            userService.loginUpdate(result);
        }catch (Exception e){
            System.out.println("登录异常");
        }
        session.setAttribute((String) Configurer.getContextProperty("session.userinfo"), result);
        ModelAndView modelAndView=new ModelAndView("myhome",ModelMapUtil.getUserMap(result)) ;
        return modelAndView;
    }

    /**
     * 注册接口
     * @param session
     */
    @RequestMapping(value="toSignup")
    public ModelAndView toSignup(User user,HttpSession session,HttpServletRequest request){
        String vcode=(String)session.getAttribute("validation_code");
//        System.out.println("session-vcode:"+vcode);
//        System.out.println("输入验证码:"+user.getVcode());
        User result=userService.checkUser(user.getUsername());
        //当数据库中存在同名用户的时候
        if(result!=null){
            return new ModelAndView("messagetip",ModelMapUtil.getMsg("已经存在用户名！"));
        }
        if(vcode!=null&&user.getVcode()!=null){
            //转换大小写
            vcode=vcode.toLowerCase();
            String in=user.getVcode().toLowerCase();
            if(!in.equals(vcode)){
                return new ModelAndView("messagetip",ModelMapUtil.getMsg("验证码输入错误！"));
            }
        }
        try{
            user.setLoginIp(IpUtil.getIpAddr(request));
            user.setSignupTime(DateUtil.getStrOfDateTime());
            user.setLoginTime(DateUtil.getStrOfDateTime());
        }catch (Exception e){
            System.out.println("user/toSignup fall");
            Map map=ModelMapUtil.getMsg("注册失败!");
            return new ModelAndView("messagetip",map);
        }
        //验证成功，加入用户信息岛session与插入到数据库
        session.setAttribute((String) Configurer.getContextProperty("session.userinfo"), user);
        userService.insertUser(user);
        return  new ModelAndView("myhome",ModelMapUtil.getUserMap(user)) ;
    }
    @RequestMapping(value = "autoLogin")
    public void autoLogin(User user,HttpServletResponse response,HttpSession session,HttpServletRequest request){
        Map map=new HashMap();
        map.put("msg","success");
        User result=userService.checkLogin(user);
        session.setAttribute((String) Configurer.getContextProperty("session.userinfo"), user);
        //当数据库中存在此用户
        if(result!=null){
            try {
                result.setLoginIp(IpUtil.getIpAddr(request));
                result.setLoginTime(DateUtil.getStrOfDateTime());
                userService.loginUpdate(result);
                ResponseUtil.outWriteJsonMessage(response,map);
            } catch (IOException e) {

            }
        }

    }

}
