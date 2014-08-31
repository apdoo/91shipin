//验证规则：字母、数字、下划线组成，字母开头，4-16位。
function
    checkUser(str){
    var
        re = /^[a-zA-z]\w{3,15}$/;
    if(re.test(str)){
        return true;
    }else{
        return false;
    }
}

$(function() {
    //登录
    $("#login").click(function(){
        var username= $("#login_username").val();
        var password=$("#login_password").val();
        if(checkUser(username)){
//            alert("验证通过");
        }
        //设置cookie
        if( $("#saveCookie").is(':checked')){
//            alert("saveCookie"+username);
            setCookie("username",username,24,"/");
            setCookie("password",password,24,"/");
        }
        $("#login_form").submit();

    });
});
