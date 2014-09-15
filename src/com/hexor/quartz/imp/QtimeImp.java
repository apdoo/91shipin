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
	//�û������
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


    @Scheduled(cron="0 0 12 * * ? ")   //0 0 12 * * ? ÿ��12��
    public void test() {
		 logger.warn("logger��ǰ��ʱ��ִ��ʱ��:"+DateUtil.getStrOfDateTime());
          //�ڴ˽���user��Ļ�Ա���ںͷ��ʼ�¼������
         service.deleteAll();
         int today=Integer.parseInt(DateUtil.getDateFolder());
         //�������а��°�������ȵĻ�Ա�Ƿ����
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
                     //��Ա����
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
