$(function() {
    //登录
    $("#login").click(function(){
        var username= $("#login_username").val();
        var password=$("#login_password").val();

        if(!checkUser(username)){
            $("#login_tips").html("<p style='text-align:center;color:#ff0000'><b>用户名输入不规范</b></p>");
            return false;
        }else if(!checkPwd(password)){
            $("#login_tips").html("<p style='text-align:center;color:#ff0000'><b>密码输入不规范</b></p>");
            return false;
        }
        //设置cookie
        if( $("#saveCookie").is(':checked')){
//            alert("saveCookie"+username);
            setCookie("username",username,24,"/");
            setCookie("password",password,24,"/");
        }
        $("#login_form").submit();

    });
    /**
     * 注册方法
     */
    $("#reg").click(function(){
        var username= $("#newusername").val();
        var password=$("#newpassword").val();
        var cpassword=$("#cpassword").val();
        var email=$("#email").val();
        if(!checkUser(username)){
            $("#signup_tips").html("<p style='text-align:center;color:#ff0000'><b>用户名不符合规范</b></p>");
            return false;
        }else if(!checkPwd(password)){
            $("#signup_tips").html("<p style='text-align:center;color:#ff0000'><b>密码输入不规范</b></p>");
            return false;
        }else if(cpassword!=password){
            $("#signup_tips").html("<p style='text-align:center;color:#ff0000'><b>两次输入密码不一致</b></p>");
            return false;
        }else if(checkEmail(email)){
            $("#signup_tips") .html("<p style='text-align:center;color:#ff0000'><b>请输入正确的邮箱</b></p>");
            return false;
        }
        //保存cookie
        if( $("#saveCookieSign").is(':checked')){
            setCookie("username",username,24,"/");
            setCookie("password",password,24,"/");
        }
        $("#signup_form").submit();
    }) ;
});
//验证规则：字母、数字、下划线组成，字母开头，5-16位。
function checkUser(str){
    var re = /^[a-zA-z]\w{4,15}$/;
    if(re.test(str)){
        return true;
    }else{
        return false;
    }
}
//验证规则 密码为6~16个字符，区分大小写
function checkPwd(str){
    var re=/[a-zA-Z0-9]{6,16}/
    if(re.test(str)){
        return true;
    }else{
        return false;
    }
}
//校验email
function checkEmail(str){
    var re=/^w+((-w+)|(.w+))*@[a-za-z0-9]+((.|-)[a-za-z0-9]+)*.[a-za-z0-9]+$/
    if(re.test(str)){
        return true;
    }else{
        return false;
    }
}

//分页方法
//分页和内容生成
function pagecreat(root,path,current,pageCount,list){
    //生成视频列表
    videolistcreat(root,list);
    //生成上一页箭头
    $("#pagenumber").append("<a>«上一页</a>");
    //处理长度 生成页数
    if(pageCount>9){
        //当页数大于9页的时候。创建首页
        if(current!=1){
            $("#pagenumber").append("<a class='page-numbers'  >"+1+"</a><span>...</span>");
        }
        $("#pagenumber").append("<a class='current'  >"+current+"</a><span class='divider'>/</span>");
        for(var i=0;i<3;i++){
            //循环当前页后三页
            if(current<(pageCount-2)){
                $("#pagenumber").append("<a class='page-numbers'  >"+(current+1+i)+"</a><span class='divider'>/</span>");
            }
        }
        //末页
        if(current!=pageCount){
            $("#pagenumber").append("<span>...</span><a class='page-numbers'  >"+pageCount+"</a>");
        }

    }else{
        //小于9页的时候 直接生成
        for(var i=0;i<pageCount;i++){
            //判断当前页则修改为current样式
            if((i+1)==current){
                $("#pagenumber").append("<a class='current'  >"+(i+1)+"</a><span class='divider'>/</span>");

            }else{
                $("#pagenumber").append("<a class='page-numbers' >"+(i+1)+"</a><span class='divider'>/</span>");
            }
        }
    }
    //生成上=下一页箭头
    $("#pagenumber").append("<a >下一页»</a>");
    //选择pagernumber下所有的子元素<a> 遍历添加href
    $("#pagenumber").children("a").each(function(){
        var j=$(this).html();
        if(j=="«上一页"){
            if(current==1){
                $(this).attr("href",root+path+1);
            }else{
                $(this).attr("href",root+path+(current-1));
            }

        }else if(j=="下一页»"){
            if(current==pageCount){
                $(this).attr("href",root+path+pageCount);
            }else{
                $(this).attr("href",root+path+(current+1));
            }

        }else{
            $(this).attr("href",root+path+j);
        }
    });

}
//生成视频列表js
function videolistcreat(root,list){
    var content="";
    //循环处理数组
    $.each(list, function(key, val) {
        var head=" <span class=\"lp_vidpara\">";
        var img="<img src=\""+val.preImgSrc+"\"width=\"134\" height=\"83\" alt=\"\" class=\"lp_newvid1\">";
        var img2="<img src=\""+root+"/resources/img/lp_newvidarro.jpg\" width=\"4\" height=\"6\" alt=\"\" class=\"lp_newvidarro\">";
        var info="<span class=\"lp_newdixt\"><a href=\""+root+"/video/videoplay?vid="+val.videoId+"\"style=\"color:#BEBEBE;\" title=\""+val.title+"\">"+val.title.substr(0,5)+".."+"</a>" ;
        var bottom="<br/>"+val.infotime+"<br/>更新时间:"+val.updatetime+"</span></span>";
        content=content+  head+img+img2+info+bottom;
        $("#v_list").html(content);
    });
}
//自动登录
function checkLogin(root){
    //验证cookie是否记住
    var username=getCookieValue("username");
    var password=getCookieValue("password");
    if(username!=""&&password!=""){
        //获得cookie信息后发送到服务端验证
        $.ajax({
            type : "POST",
            url : root+"/user/autoLogin",
            data : {
                username : username,
                password : password
            },
            dataType:"json",
            success : function(data) {
                if(data.msg){
                    //表示自动登录成功
                    $("#my").html(username);
                    $("#rp_loginpad").hide();
                }
            },
            //请求出错的处理
            error:function(){
//                       alert("请求出错");
            }
        });
    }
}
