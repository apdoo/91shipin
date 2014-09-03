package com.hexor.repo;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-1
 * Time: 下午6:04
 * To change this template use File | Settings | File Templates.
 * 被禁止类
 */
public class BanBean {
    private String Bankey;//被禁止的 可以是用户名或者游客ip
    private String banDate;//被禁止的时间
    private String banFlag;//被禁止标志 0 暂时解禁  1封禁
}
