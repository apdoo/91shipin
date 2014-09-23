package com.hexor.controller;

import com.hexor.repo.Pager;
import com.hexor.repo.PostBean;
import com.hexor.service.impl.PostService;
import com.hexor.service.impl.RePostService;
import com.hexor.util.ModelMapUtil;
import com.hexor.util.PagerUtil;
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
import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
     * @return
     */
    @RequestMapping(value="home")
    public ModelAndView home(HttpServletRequest request, HttpServletResponse response,ModelMap model){
        Map modelMap =new HashMap();
        String wpage=request.getParameter("wpage");
        long count=postService.getPostsCount();
        if(wpage==null){
            wpage="1";
        }
        System.out.println("count.."+count);
        Pager p=new Pager();
        //设置一页面查询15条
        p.setData(20);
        try{
            p= PagerUtil.build(PagerUtil.SetPager(p,count, Integer.parseInt(wpage.trim())));
        }catch(Exception e){
            p=PagerUtil.build(PagerUtil.SetPager(count, 1));
        }
        System.out.println("page"+p.toString());
        //查找所需要的页数的数据
        //list转换为json数组返回前端
        List list=postService.limit(p);
        System.out.println("list size"+list.size());
        JSONArray jsonArray = JSONArray.fromObject(list);
        String result = jsonArray.toString();
        //分页情况
        modelMap.put("pager",p);
        //json格式数组
        modelMap.put("list", result);
        return  new ModelAndView("bbs/bbshome",modelMap);
    }
    /**
     * 设置查看帖子详细页面
     */
    @RequestMapping(value="postdetail")
    public ModelAndView test(@RequestParam(value = "pid",required = true,defaultValue = "-1") String pid, HttpServletResponse response,ModelMap model){
        //当传来的参数符合帖子id 为纯数字
        if(!"-1".equals(pid)&&pid.matches("\\d+")){
            PostBean bean=postService.getPostBean(pid);
            if(bean!=null){
                return new ModelAndView("postdetail",ModelMapUtil.getMap("bean",bean));
            }
        }
             return new ModelAndView("messagetip", ModelMapUtil.getMsg("抱歉，该帖子不存在或者被删除"));
    }

    /**
     *
     * @param session
     * @param response
     * @param model
     */
    @RequestMapping(value="test")
    public void test(HttpSession session, HttpServletResponse response,ModelMap model){
        System.out.println(postService.getPostsCount());
        System.out.println(repostService.getRePostsCount());
    }



}
