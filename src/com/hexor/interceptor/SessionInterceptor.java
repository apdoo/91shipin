package com.hexor.interceptor;

import com.hexor.repo.User;
import com.hexor.util.Configurer;
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
 * 拦截所有请求 获得session信息
 */
public class SessionInterceptor implements HandlerInterceptor {

    public String[] allowUrls;//还没发现可以直接配置不拦截的资源，所以在代码里面来排除
    public void setAllowUrls(String[] allowUrls) {
        this.allowUrls = allowUrls;
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
        String requestUrl = httpServletRequest.getRequestURI().replace(httpServletRequest.getContextPath(), "");
        if(null != allowUrls && allowUrls.length>=1)  {
            for(String url : allowUrls) {
                if(requestUrl.contains(url)) {
                    //请求登录界面 如果发现session中有user信息 直接跳转
//                    User user=(User)httpServletRequest.getSession().getAttribute((String) Configurer.getContextProperty("session.userinfo")) ;
//                    if(user!=null)
//                    httpServletResponse.sendRedirect(httpServletRequest.getContextPath()+"/user/myhome");
                }
            }
        }
        return true;  //To change body of implemented methods use File | Settings | File Templates.
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
