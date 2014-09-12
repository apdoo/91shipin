package com.hexor.interceptor;

import com.hexor.repo.User;
import com.hexor.repo.VistLogBean;
import com.hexor.service.impl.UserService;
import com.hexor.service.impl.VistLogService;
import com.hexor.util.Configurer;
import com.hexor.util.DateUtil;
import com.hexor.util.IpUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.ModelMap;
import org.springframework.web.context.request.WebRequest;
import org.springframework.web.context.request.WebRequestInterceptor;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-28
 * Time: 下午5:20
 * To change this template use File | Settings | File Templates.
 *
 * 拦截访问视频页面的请求
 */
public class VideoPlayInterceptor implements HandlerInterceptor {

    public String[] allowUrls;//还没发现可以直接配置不拦截的资源，所以在代码里面来排除
    public void setAllowUrls(String[] allowUrls) {
        this.allowUrls = allowUrls;
    }

    @Autowired
    @Qualifier("com.hexor.service.impl.VistLogService")
    private VistLogService service = null;
    public void setService(VistLogService service) {
        this.service = service;
    }

    @Autowired
    @Qualifier("com.hexor.service.impl.UserService")
    private UserService userService = null;

    public void setUserService(UserService userService) {
        this.userService = userService;
    }


    /**
     * 只有返回true的时候 下面两个方法才会继续
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @return
     * @throws Exception
     */
    @Override
    public boolean preHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o) throws Exception {
        //过滤不拦截的请求
//        String requestUrl = httpServletRequest.getRequestURI().replace(httpServletRequest.getContextPath(), "");
//        if(null != allowUrls && allowUrls.length>=1)  {
//            for(String url : allowUrls) {
//                if(requestUrl.contains(url)) {
//                    //请求登录界面 如果发现session中有user信息 直接跳转
//                    User user=(User)httpServletRequest.getSession().getAttribute((String) Configurer.getContextProperty("session.userinfo")) ;
//                     if(user!=null)
//                     httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/user/myhome");
//                }
//            }
//        }
       //记录访问日志
       VistLogBean vistLog=new VistLogBean();
       String url= httpServletRequest.getRequestURL().toString()+"vid?="+httpServletRequest.getParameter("vid").toString();
       String ip =IpUtil.getIpAddr(httpServletRequest);
       vistLog.setTime(DateUtil.getStrOfDateTime());
       vistLog.setIp(ip);
       vistLog.setUrl(url);
       //获得当前session访问的用户信息
       User user=(User)httpServletRequest.getSession().getAttribute((String) Configurer.getContextProperty("session.userinfo")) ;
       if(user!=null){
           vistLog.setUsername(user.getUsername());
           //从数据库中查找到用户信息
           User dbUser=userService.getUserByUsername(user.getUsername());
           System.out.println("dbuser"+dbUser.toString());
           //如果用户为会员查看用户是否是付费会员--推荐在Task里进行操作数据库，将到期的付费会员改变为不是付费会员
           //当用户为普通会员且积分大于10，进行积分增加
           if(dbUser!=null&&"0".equals(dbUser.getType()+"")&&dbUser.getPoints()>=10){
               //从数据库中查找用户的积分进行扣除
                userService.reducePointsById(dbUser.getId()+"");
           }else{
               httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/videoviewlimit");
           }

       }
        System.out.println(vistLog.toString());
        service.insertVistLog(vistLog);
        //判断当前用户或者匿名访问用户是否能够继续访问视频页面

        return true;
    }

    /**
     * 在servlert controller生成视图之前操作  modelAndView
     * @param httpServletRequest
     * @param httpServletResponse
     * @param o
     * @param modelAndView
     * @throws Exception
     */
    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {
//        HttpSession session=httpServletRequest.getSession();
//        //在此拿到session里是否有用户信息
//        User user= (User) session.getAttribute((String) Configurer.getContextProperty("session.userinfo"));
//        if(user==null){
//            //没有信息的时候，  modelAndView设置为游客
//            user=new User();
//            user.setUsername("游客");
//            modelAndView.addObject("userinfo",user);
//        }else{
//            modelAndView.addObject(user);
//        }



    }

    @Override
    public void afterCompletion(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, Exception e) throws Exception {
        //To change body of implemented methods use File | Settings | File Templates.
    }
}
