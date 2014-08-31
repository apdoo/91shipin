package com.hexor.controller;

import com.hexor.repo.Pager;
import com.hexor.repo.VideoBean;
import com.hexor.service.impl.VideoService;
import com.hexor.util.PagerUtil;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 下午1:30
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value="video")
public class VideoController {

    @Autowired
    @Qualifier("com.hexor.service.impl.VideoService")
    private VideoService videoService = null;
    public void setVideoService(VideoService videoService) {
        this.videoService = videoService;
    }
    @RequestMapping(value="videoplay")
    public String videoplay(HttpSession session, ModelMap model){
        return "videoplay";
    }

    @RequestMapping(value="videoslist")
    public ModelAndView videoslist(HttpSession session, ModelMap model,HttpServletRequest request){
        Map modelMap =new HashMap();
        String wpage=request.getParameter("wpage");
        long count=videoService.getVideosCount();
        if(wpage==null){
            wpage="1";
        }
        Pager p=new Pager();
        try{
            p= PagerUtil.build(PagerUtil.SetPager(count, Integer.parseInt(wpage.trim())));
        }catch(Exception e){
            p=PagerUtil.build(PagerUtil.SetPager(count, 1));
        }
        //查找所需要的页数的数据
        //list转换为json数组返回前端
        List list=videoService.limit(p);
        JSONArray jsonArray = JSONArray.fromObject(list);
        String result = jsonArray.toString();
        //分页情况
        modelMap.put("pager",p);
        //json格式数组
        modelMap.put("list", result);
        return  new ModelAndView("videoslist",modelMap);
    }
}
