package com.hexor.util;

import com.hexor.repo.Pager;

/** 
 * @author  hexd
 * ����ʱ�䣺2014-6-6 ����6:05:31 
 * ��˵�� 
 */
public class PagerUtil {
	
	
	/**���÷�ҳ
	 * @param count
	 * @param currentP
	 * @return
	 */
	public static Pager SetPager(long count,int currentP){
		Pager pager=new Pager();
		//����ҳ��ҳ��
		pager.setPageCount((int)count/pager.getData()+1);
		//���õ�ǰҳ��
		pager.setCurrentPage(currentP);
		return pager;
	}
	/**���÷�ҳ
	 * @param count
	 * @param currentP
	 * @return
	 */
	public static Pager SetPager(Pager pager,long count,int currentP){
		//����ҳ��ҳ��
		pager.setPageCount((int)count/pager.getData()+1);
		//���õ�ǰҳ��
		pager.setCurrentPage(currentP);
		return pager;
	}
	
	//��ҳָ��index
	public static Pager build(Pager p){
		if(p.getCurrentPage()<=1){
			p.setIndex(0);
		}else{
			//�ж������ҳ���Ƿ�������ҳ����
			if(p.getCurrentPage()>p.getPageCount()){
				//System.out.println("�����ҳ��"+p.getCurrentPage()+"�������ҳ����"+p.getPageCount());
				p.setIndex((p.getPageCount()-1)*p.getData());
			}else{
				p.setIndex((p.getCurrentPage()-1)*p.getData());
			}
			//System.out.println("��ǰ��index"+p.getIndex());
		}
		return p;
	}
}
