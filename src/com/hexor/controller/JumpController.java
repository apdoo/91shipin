package com.hexor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 上午11:48
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class JumpController {


    @RequestMapping(value="home")
    public String home(HttpSession session, ModelMap model){
        return "index";
    }
}
