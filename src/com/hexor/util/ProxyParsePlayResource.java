package com.hexor.util;

import com.hexor.dao.IProxyMapper;
import com.hexor.repo.ProxyBean;
import com.hexor.service.impl.ProxyService;
import org.apache.http.HttpResponse;
import org.apache.http.NameValuePair;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.message.BasicNameValuePair;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.security.KeyManagementException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created with IntelliJ IDEA.
 * User: Dong
 * Date: 14-12-28
 * Time: 上午11:43
 * To change this template use File | Settings | File Templates.
 * 使用代理解析91pron和caopron(http://198.105.209.230/)的视频播放地址
 */
@Service("com.com.hexor.util.ProxyParsePlayResource")
public class ProxyParsePlayResource {
    //caopron的index地址
    private static String caoPronIndexUrl="http://198.105.209.230";
    //caopron获得视频源地址的接口
    private static String caoPron="http://198.105.209.230/media/player/cpconfig.php?vkey=";
    //视频文件请求url 后跟参数需要拼装
    private static String vedioFileUrl="http://91p.vido.ws/getfile.php?";
    //http 工具类
    private static CrawlerUtil crawlerUtil=new CrawlerUtil();

    @Autowired
    @Qualifier("com.hexor.dao.IProxyMapper")
    private IProxyMapper mapper;
    public void setMapper(IProxyMapper delegate) {
        this.mapper = delegate;
    }

    public static void main(String[] args) throws IOException, NoSuchAlgorithmException, CloneNotSupportedException, KeyManagementException {
//        System.out.println("....."+parseCaopron(caoPronIndexUrl+"/video/bc08e1a118ca40fd94d3/人妻-熟女-好色妻肛门奸-小仓02"));
//        System.out.println("....."+parseCaopron(caoPronIndexUrl+"/video/51cbc9a0f9caeabd6f05/岛崎-絵理子-eriko-shimazaki01"));
//        System.out.println("..."+parse91pron("http://91p.vido.ws/view_video.php?viewkey=0a5a85de95c783816974&page=1&viewtype=basic&category=mr"));
    }
    /**
     * 解析91目标页面中的视频的视频源文件url地址
     * @param targetUrl
     * @return
     */
    public  String parse91pron(String targetUrl) throws IOException, CloneNotSupportedException {
        ProxyBean proxy= mapper.getOneProxy();
        System.out.println("start connet to proxy:["+proxy.toString()+"]");
        //使用新的访问代理的方法
        try{crawlerUtil.clientByProxyCreate("http", proxy.getIp(), "http://" + proxy.getIp());
        }catch (Exception e){
            return "error[parse91pron init fall]";
        }
        HttpResponse response=crawlerUtil.proxyPostUrl(targetUrl,proxy.getIp(),proxy.getPort(),getPostParmList());
        if(response!=null){
            //response不为空，证明代理连接目标页面成功
            System.out.println(response.getStatusLine());
            Document doc=crawlerUtil.getDocUTF8(response);
            //如果doc不为空，且doc中包含seccode字段，证明当前代理连接的目标页面成功解析出视频路径
            if(doc!=null&&doc.toString().contains("seccode")){
              return getDownLoadUrl(doc);
            }   else{
                //代理失败以后 删除代理表中的代理
                mapper.deleteProxy(proxy.getIp());
                //连接代理不成功，重新连接
                return  parse91pron(targetUrl);
            }
        }   else{
            //代理失败以后 删除代理表中的代理
            mapper.deleteProxy(proxy.getIp());
            //连接代理不成功，重新连接
            return  parse91pron(targetUrl);
        }
    }

    /**
     * 解析caopron目标页面中的视频的视频源文件url地址
     * 在caopron中普通账号只能访问视频长度 < 20分钟的
     * @param targetUrl
     * @return
     */
    public  String parseCaopron(String targetUrl) throws NoSuchAlgorithmException, KeyManagementException, IOException, CloneNotSupportedException {
        ProxyBean proxy= mapper.getOneProxy();
        System.out.println("start connet to proxy:["+proxy.toString()+"]");
        //使用新的访问代理的方法
         try{crawlerUtil.clientByProxyCreate("http", proxy.getIp(), "http://" + proxy.getIp());
         }catch (Exception e){
             return "error[parseCaopron init fall]";
        }
        //解析目标页面中的vkey
        //连接代理
        String temp[]=targetUrl.split("/");
        String vkey=temp[4];
        //caopron站点get方式获得视频源文件地址
        HttpResponse response=crawlerUtil.proxyGetUrl(caoPron+vkey,proxy.getIp(),proxy.getPort()) ;
        if(response!=null){
            //response不为空，证明代理连接目标页面成功
            System.out.println(response.getStatusLine());
            Document doc=crawlerUtil.getDocUTF8(response);
            //如果doc不为空，且doc中包含file字段，证明当前代理连接的目标页面成功解析出视频路径
            if(doc!=null&&doc.toString().contains("<file>")){
                System.out.println(doc.toString());
                //解析xml形式的返回文件
                 int start=doc.toString().indexOf("<file>");
                 int end=doc.toString().indexOf("</file>");
                if(start!=-1&&end!=-1){
//                 System.out.println("parse result:"+doc.toString().substring(start+"<file>".length(),end).trim());
                   return doc.toString().substring(start+"<file>".length(),end).trim();
                }
                return "error[parseCaopron parse fall]";
            }
            else{
                //代理失败以后 删除代理表中的代理
                mapper.deleteProxy(proxy.getIp());
                //连接代理不成功，重新连接
                return  parseCaopron(targetUrl);
            }

        }else{
            //代理失败以后 删除代理表中的代理
            mapper.deleteProxy(proxy.getIp());
            //连接代理不成功，重新连接
            return  parseCaopron(targetUrl);

        }
    }
    /**
     * 拿去post参数，获得中文返回页面
     * */
    public static List<NameValuePair> getPostParmList(){
        List<NameValuePair> list = new ArrayList<NameValuePair>();
        list.add(new BasicNameValuePair("session_language", "cn_CN"));
        return list;
    }
    /**解析参数返回获得视频源地址的链接
     * @return
     * @throws CloneNotSupportedException
     * @throws java.io.IOException
     * @throws org.apache.http.client.ClientProtocolException
     */
    public  static String getDownLoadUrl(Document doc) throws ClientProtocolException, IOException, CloneNotSupportedException {
        Map map=new HashMap();
        String file="";
        String max_vid="";
        String seccode="";
        String mp4="";
        String downUrl="";
        //视频页面的html信息
        String content=doc.toString();
//        System.out.println("bbb"+doc.toString());
        if(content.contains("seccode")){
//            System.out.println("sss"+content);
            //截取包含参数的临时字符串
            String temp=content.substring(content.indexOf("so.addParam('allowscriptaccess'"),content.indexOf("so.write('mediaspace');")).replace("\n", "");
            String[] arr=temp.split(";");
            for(int i=0;i<arr.length;i++){
                if(arr[i].contains("file")){
                    file=arr[i].replaceAll("(?:so.addVariable|\\(|file|,|'|\"|\\))", "");// 替换掉不相关的
                }else if(arr[i].contains("max_vid")){
                    max_vid=arr[i].replaceAll("(?:so.addVariable|\\(|max_vid|,|'|\"|\\))", "");// 替换掉不相关的
                }else if(arr[i].contains("seccode")){
                    seccode=arr[i].replaceAll("(?:so.addVariable|\\(|seccode|,|'|\"|\\))", "");// 替换掉不相关的
                }else if(arr[i].contains("mp4")){
                    mp4=arr[i].replaceAll("(?:so.addVariable|\\(|mp4|,|'|\"|\\))", "");// 替换掉不相关的
                }
            }
            map.put("VID", file);
            map.put("max_vid", max_vid);
            map.put("seccode", seccode);
            map.put("mp4", mp4);
        } else{
            System.out.println("["+content+"]");
        }
        //拿到包含下载地址的页面
        String tempUrl=vedioFileUrl+"VID="+map.get("VID")+"&seccode="+map.get("seccode")+"&mp4="+mp4+"&max_vid="+map.get("max_vid");
        //--异常 跳转的下载地址
        HttpResponse response=crawlerUtil.noProxyGetUrl(tempUrl);
        if(response!=null){
            //解析下载地址页面
            Document tempdoc=crawlerUtil.getDocUTF8(response);
//            System.out.println("下载页面"+tempdoc.toString());
            //包含下载地址
            if (tempdoc.text() != null && tempdoc.text().contains("file=http://")) {
                //过滤出真正的下载地址
                downUrl=tempdoc.text().substring(
                        tempdoc.text().indexOf("﻿file=") + 6,
                        tempdoc.text().indexOf("&domainUrl"));
                //http://50.7.69.10//dl//8bb3e2c39d328430db7f9811a06fe8dd/53f1b5b5//91porn/mp43/83954.mp4
                //http://107.155.123.34//dl//81b0256e55efc72fd8d4c5d1889b1684/53f1bc61//91porn/mp43/83954.mp4
                return downUrl;
            } else{
                String msg="error[analyze download url fall]"+tempdoc.toString();
                return msg;
            }
        } else{
            //解析下载地址出错!!!!!!!这里还没处理
            String msg="error[visit download page error]";
            return msg;
        }
    }
}
