package com.hexor.interceptor;

import com.hexor.repo.User;
import com.hexor.util.Configurer;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-16
 * Time: 下午3:43
 * To change this template use File | Settings | File Templates.
 * 后台管理员拦截器
 */
public class AdminInterceptor implements HandlerInterceptor {

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {

        System.out.println("admin interceptor");
        User admin=(User)request.getSession().getAttribute((String) Configurer.getContextProperty("session.admin"));
        if(admin==null){
            response.sendRedirect(request.getContextPath()+"/admin/login");
        }
        return true;  //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {
        //To change body of implemented methods use File | Settings | File Templates.
    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {
        //To change body of implemented methods use File | Settings | File Templates.
    }
}
