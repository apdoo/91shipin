package com.hexor.controller;

import com.hexor.repo.Pager;
import com.hexor.repo.VideoBean;
import com.hexor.service.impl.VideoService;
import com.hexor.util.*;
import net.sf.json.JSONArray;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
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

    /**
     * 拿去视频
     * @param vid
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="videoplay")
    public ModelAndView videoplay(@RequestParam("vid")String vid,HttpSession session, ModelMap model){
        String videoId= "";
        try {
            videoId = EncodeUtil.decodeString(vid);
        } catch (IOException e) {
            return new ModelAndView("messagetip", ModelMapUtil.getMsg("抱歉，获取视频页面出错！"));
        }
        System.out.println("want video:"+videoId);
           if(!videoId.endsWith(".mp4")){
               //解析视频id错误的时候
               return new ModelAndView("messagetip", ModelMapUtil.getMsg("抱歉，获取视频页面出错！"));
           }
           VideoBean video=videoService.selectByVideoId(videoId);
            if(video==null){
                System.out.println("bbbbbbbb");
                return new ModelAndView("messagetip", ModelMapUtil.getMsg("抱歉，获取视频页面出错！"));
            }
        //84812.mp4  84897.mp4
            System.out.println(video.toString());
            String root=(String) Configurer.getContextProperty("video.root");
            Map map=new HashMap();
            map.put("root",root);
            map.put("video",video);
            return new ModelAndView("videoplay",map);
    }
    @RequestMapping(value="recently")
    public void getRecentlyVideos(HttpServletResponse response){
        List<VideoBean> list=videoService.selectRecently();
        if(list!=null){
            System.out.println(list.size());
            JSONArray jsonArray = JSONArray.fromObject(list);
            String result = jsonArray.toString();
            System.out.println(result);
            try {
                ResponseUtil.outWriteJson(response,result);
            } catch (IOException e) {
                System.out.println("获得列表失败");
            }
        }
    }

    /**
     * 获取视频列表
     * @param session
     * @param model
     * @param request
     * @return
     */
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
