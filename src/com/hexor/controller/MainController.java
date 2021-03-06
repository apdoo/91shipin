package com.hexor.controller;

import com.hexor.repo.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 上午11:48
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class MainController {


    /**
     * 主页
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="home")
    public String home(HttpSession session, HttpServletResponse response,ModelMap model){
        //在此判断是否记住
        return "home";
    }

    /**
     * 访问视频页面受限
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="videoviewlimit")
    public String videoviewlimit(HttpSession session, HttpServletResponse response,ModelMap model){
        //在此判断是否记住
        return "videoviewlimit";
    }


}
