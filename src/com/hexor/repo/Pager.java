package com.hexor.repo;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-8-27
 * Time: 下午3:03
 * To change this template use File | Settings | File Templates.
 */
public class Pager {
    private int count;//数据总数
    private int index=0;//起始条数，针对mysql来说数据库数据起始条数为0
    private int data=24;//查多少条，针对mysql的limit来说 end代表查询从起始条数开始的多少条
    //若limit 2,1 则表示查询数据库第三条开始的总共一条数据
    private int pageCount;//显示的总页数
    private int currentPage=1;//当前请求的页数
    private String type=null; //视频类型
    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public int getCurrentPage() {
        return currentPage;
    }
    public void setCurrentPage(int currentPage) {
        this.currentPage = currentPage;
    }
    public int getPageCount() {
        return pageCount;
    }
    public void setPageCount(int pageCount) {
        this.pageCount = pageCount;
    }
    public int getCount() {
        return count;
    }
    public void setCount(int count) {
        this.count = count;
    }
    public int getIndex() {
        return index;
    }
    public void setIndex(int index) {
        this.index = index;
    }
    public int getData() {
        return data;
    }
    public void setData(int data) {
        this.data = data;
    }

//     public String toString() {
//        String s="分页信息:"+count+"起始"+index+"总条数"+data;
//        return s;
//    }
}

