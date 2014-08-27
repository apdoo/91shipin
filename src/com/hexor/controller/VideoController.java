package com.hexor.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 下午1:30
 * To change this template use File | Settings | File Templates.
 */
@Controller
public class VideoController {
    @RequestMapping(value="videoplay")
    public String videoplay(HttpSession session, ModelMap model){
        return "videoplay";
    }

    @RequestMapping(value="videoslist")
    public String videoslist(HttpSession session, ModelMap model){
        return "videoslist";
    }
}
