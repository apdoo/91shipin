package com.hexor.quartz.imp;

import com.hexor.quartz.QtimeInterface;
import com.hexor.service.impl.UserService;
import com.hexor.util.DateUtil;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

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
	
  // @Scheduled(cron="0 0/1 * * * ? ")   //ÿ1����ִ��һ��
    public void test() {
		 logger.warn("logger��ǰ��ʱ��ִ��ʱ��:"+DateUtil.getStrOfDateTime());
		 //����id��������û��� ����һ������û��ǩ�����û���Ϣ
//		 User user=userService.getOneUserByDate(DateUtil.getCurrentDay());
//		 String msg="";
//		 //���ڴ����û�
//		 if(user!=null){
//			 //System.out.println("����ûǩ����:"+user.getUsername()+"����:"+user.getSigndate());
//			 //ǩ������
//			 try {
//				msg=coreService.validForLogin(user.getUsername(), user.getPassword());
//			} catch (KeyManagementException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (NoSuchAlgorithmException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (CloneNotSupportedException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//			 System.out.println(msg);
//			 //ǩ���ɹ�
//			 Map map=new HashMap();
//			 map.put("username", user.getUsername());
//			 map.put("signdate", DateUtil.getStrOfDateMinute());
//			 if(msg.equals(TipMsgUtil.SIGN_SUCCESS)){
//				 map.put("flag", msg);
//			 }else{
//				 map.put("flag", msg);
//			 }
//			 userService.updateSigndate(map);
//		 }
	}

}
