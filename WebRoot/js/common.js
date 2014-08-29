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