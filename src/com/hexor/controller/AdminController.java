package com.hexor.controller;

import com.hexor.repo.Pager;
import com.hexor.repo.User;
import com.hexor.service.impl.UserService;
import com.hexor.util.PagerUtil;
import com.hexor.util.ResponseUtil;
import net.sf.json.JSONObject;
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
 * Date: 14-9-12
 * Time: 下午3:11
 * To change this template use File | Settings | File Templates.
 */
@Controller
@RequestMapping(value="admin")
public class AdminController {
    @Autowired
    @Qualifier("com.hexor.service.impl.UserService")
    private UserService userService = null;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }


    /**
     * 返回我的主页
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="home")
    public ModelAndView home(HttpSession session, ModelMap model){
        return new ModelAndView("admin/home");
    }

    /**
     * 返回用户管理
     * @param session
     * @param model
     * @return
     */
    @RequestMapping(value="usermanage")
    public ModelAndView usermanage(HttpSession session, ModelMap model){
        return new ModelAndView("admin/usermanage");
    }

    /**
     * 更改用户信息
     */
    @RequestMapping(value = "updateUser")
    public void updateUser(HttpSession session, ModelMap model){

    }

    /**
     * 获得用户信息
     */
    @RequestMapping(value = "getUsers")
    public void getUsers(@RequestParam(value = "page")String page,@RequestParam(value = "rows")String rows, HttpServletResponse response,HttpServletRequest request){
        System.out.println("page:"+page+"rows:"+rows);
        Map map = new HashMap();
        Pager pager=new Pager();
        long count=userService.getUsersCount();
        pager.setData(Integer.parseInt(rows));
        pager= PagerUtil.build(PagerUtil.SetPager(pager,count,Integer.parseInt(page)));
        List<User> list=userService.limit(pager);
        map.put("total", 50); //总页数
        map.put("rows", list); //分页查询到的数据
        JSONObject json = new JSONObject();
        json=json.fromObject(map); //将map对象转换成为json对象
        System.out.println("--------"+json.toString());
        try {
            ResponseUtil.outWriteJson(response,json.toString());
        } catch (IOException e) {
        }
    }

}
