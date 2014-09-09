package com.hexor.util;

import com.hexor.repo.Pager;

/** 
 * @author  hexd
 * 创建时间：2014-6-6 下午6:05:31 
 * 类说明 
 */
public class PagerUtil {
	
	
	/**设置分页
	 * @param count
	 * @param currentP
	 * @return
	 */
	public static Pager SetPager(long count,int currentP){
		Pager pager=new Pager();
		//设置页面页数
		pager.setPageCount((int)count/pager.getData()+1);
		//设置当前页数
		pager.setCurrentPage(currentP);
		return pager;
	}
	/**使用自定义的一页显示条数，设置分页
	 * @param count
	 * @param currentP
	 * @return
	 */
	public static Pager SetPager(Pager pager,long count,int currentP){
		//设置页面页数
		pager.setPageCount((int)count/pager.getData()+1);
		//设置当前页数
		pager.setCurrentPage(currentP);
		return pager;
	}
	
	//分页指定index
	public static Pager build(Pager p){
		if(p.getCurrentPage()<=1){
			p.setIndex(0);
		}else{
			//判断输入的页数是否是最大的页数了
			if(p.getCurrentPage()>p.getPageCount()){
				//System.out.println("输入的页数"+p.getCurrentPage()+"大于最大页数了"+p.getPageCount());
				p.setIndex((p.getPageCount()-1)*p.getData());
			}else{
				p.setIndex((p.getCurrentPage()-1)*p.getData());
			}
			//System.out.println("当前的index"+p.getIndex());
		}
		return p;
	}
}
