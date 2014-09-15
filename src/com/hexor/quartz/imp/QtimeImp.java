package com.hexor.quartz.imp;

import com.hexor.quartz.QtimeInterface;
import com.hexor.repo.User;
import com.hexor.service.impl.UserService;
import com.hexor.service.impl.VistLogService;
import com.hexor.util.DateUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class QtimeImp implements QtimeInterface{
	Logger logger = Logger.getLogger(QtimeImp.class);
	//用户服务层
	@Autowired
    @Qualifier("com.hexor.service.impl.UserService")
	private UserService userService=null;
	public void setUserService(UserService userService) {
		this.userService = userService;
	}

    @Autowired
    @Qualifier("com.hexor.service.impl.VistLogService")
    private VistLogService service = null;
    public void setService(VistLogService service) {
        this.service = service;
    }


    @Scheduled(cron="0 0 12 * * ? ")   //0 0 12 * * ? 每日12点
    public void test() {
		 logger.warn("logger当前定时器执行时间:"+DateUtil.getStrOfDateTime());
          //在此进行user表的会员过期和访问记录表的清空
         service.deleteAll();
         int today=Integer.parseInt(DateUtil.getDateFolder());
         //查找所有包月包年包季度的会员是否过期
         List<User> list=userService.getUserByType();
         for(User user:list){
             if(user.getTemp()!=null&&user.getTemp()!=""){
                 int temp=0;
                 try{
                     temp=Integer.parseInt(user.getTemp().replace("-",""));
                 }catch (NumberFormatException e){
                     temp=0;
                 }
                 if(today>temp){
                     //会员过期
                     user.setType(0);
                     user.setTemp("");
                 }
             } else{
                 user.setType(0);
                 user.setTemp("");
             }
             userService.updateUser(user);
         }
	}

}
