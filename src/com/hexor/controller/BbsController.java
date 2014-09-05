package com.hexor.controller;

import com.hexor.service.impl.PostService;
import com.hexor.service.impl.RePostService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-5
 * Time: 下午3:17
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value="bbs")
public class BbsController {

    @Autowired
    @Qualifier("com.hexor.service.impl.PostService")
    private PostService postService = null;

    public void setPostService(PostService postService) {
        this.postService = postService;
    }

    @Autowired
    @Qualifier("com.hexor.service.impl.RePostService")
    private RePostService repostService = null;

    public void setRePostService(RePostService repostService) {
        this.repostService = repostService;
    }
    /**
     * 主页
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="home")
    public String home(HttpSession session, HttpServletResponse response,ModelMap model){
        return "bbshome";
    }
    @RequestMapping(value="test")
    public void test(HttpSession session, HttpServletResponse response,ModelMap model){
        System.out.println(postService.getPostsCount());
        System.out.println(repostService.getRePostsCount());
    }



}
