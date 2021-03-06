package com.hexor.util;

import com.hexor.repo.User;

import java.util.HashMap;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-9-3
 * Time: 下午3:14
 * To change this template use File | Settings | File Templates.
 */
public class ModelMapUtil {

    public static Map getMsg(String msg){
           Map map=new HashMap();
           msg= EncodingTool.encodeStr(msg,"UTF-8");
           map.put("msg",msg) ;
           return map;
    }

    public static Map getUserMap(User user){
        Map map=new HashMap();
        map.put("userinfo",user) ;
        return map;
    }

    /**
     * 获得map的通用方法
     * @param key
     * @param obj
     * @return
     */
    public static Map getMap(String key,Object obj){
        Map map=new HashMap();
        map.put(key,obj) ;
        return map;
    }
}
