 //数据回显


//修改姓名
function saveInformation(){
    alert("确认修改？");
    //昵称
    var nickname=document.getElementById("nickname").value;

    //邮箱
    var umail=document.getElementById("umail").value;
    //电话
    var phone=document.getElementById("phone").value;
    //密码
    var password=document.getElementById("ConfirmPs").value;
    //Uid
    var Uuid=document.getElementById("Uuid").value;


    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            window.location.reload();
        }
    }
    xhttp.open("post","/accountInfoOnload?", false);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("service=userInformationUpdate&Uuid="+Uuid+"&nickname="+nickname+"&account="+account+"&umail="+umail+"&phone="+phone+"&password="+password+"");
}

/*function accountUpdate(){
    //钱包
    var account=document.getElementById("account").value;
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {

            window.location.reload();
        }
    }
    xhttp.open("post","/accountInfoOnload?", false);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("service=userInformationUpdate&Uuid="+Uuid+"&nickname="+nickname+"&account="+account+"&umail="+umail+"&phone="+phone+"&password="+password+"");

}*/
//充值
function accountAdd(){
    //Uid
    var Uuid=document.getElementById("Uuid").value;
    //钱包
    var accountAdd=document.getElementById("accountSum").value;
    var accountOld=document.getElementById("account").value;
    //hide
    document.getElementsByClassName("#adduse")

    var xhttp = new XMLHttpRequest();
    xhttp.onreadystatechange = function() {
        if (this.readyState == 4 && this.status == 200) {
            var info=JSON.stringify(this.responseText);
            var data=this.responseText;
            var jsonObj=JSON.parse(data);

            //钱包
            var account=jsonObj.account;
            document.getElementById("account").value=account;

            document.getElementById("accountSum").value=0;


        }
    }
    xhttp.open("post","/accountInfoOnload?", false);
    xhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
    xhttp.send("service=userAccountUpdate&Uuid="+Uuid+"&accountOld="+accountOld+"&accountAdd="+accountAdd+"");

}
//修改头像
 function updatehpic(){
     //Uid
     var Uuid=document.getElementById("Uuid").value;
     searchhpic(Uuid);
 }