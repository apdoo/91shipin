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
 * Date: 14-9-3
 * Time: 下午4:59
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value="public")
public class PublicController {
    /**
     * 主页
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="home")
    public String home(HttpSession session, HttpServletResponse response,ModelMap model){
        return "publichome";
    }

}
