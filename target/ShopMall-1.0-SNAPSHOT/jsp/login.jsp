<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<title>HTML注册登录页面模板</title>
<link rel="stylesheet" href="../css/style.css">
<script src="/jquery/jquery3.6.1.js"></script>
</head>
<style type="text/css">
    .ok {
        color: green;
    }
    .no {
        color: red;
    }
    #ts{width: 150px;margin: 0px auto;overflow: auto;}
    #ts div{text-align: center;float: left;width: 50px;background-color: aliceblue;}
</style>
<body>
<div class="content" style="height: 585px;" >
    <form action="${pageContext.request.contextPath}/userinfo?&service=login" method="post">
    <div class="form sign-in">
        <h2>欢迎回来</h2>
        <label>
            <span>用户名</span>
            <input type="text" name="username" id="lu"/><span id="lus">${msg}</span>
        </label>
        <label>
            <span>密码</span>
            <input type="password" name="password" id="lp"/>
        </label>
        <label>
            <input style=" display: inline;width:20px;height: 20px" type="checkbox" name="remember" value="remember" id="remember">记住登录信息<span style="display: inline">&nbsp;&nbsp;</span>
        </label>
        <p class="forgot-pass"><a href="${pageContext.request.contextPath}/html/password.html" >忘记密码？</a></p>
        <button type="submit" class="submit">登 录</button>
        <button type="button" class="fb-btn" id="toemail">使用 <span>邮箱</span> 帐号登录</button>
    </div>
    </form>
    <div class="sub-cont">
        <div class="img">
            <div class="img__text m--up">
                <h2>还未注册？</h2>
                <p>立即注册，购买喜爱的电子产品！</p>
            </div>
            <div class="img__text m--in">
                <h2>已有帐号？</h2>
                <p>有帐号就登录吧，好久不见了！</p>
            </div>
            <div class="img__btn">
                <span class="m--up">注 册</span>
                <span class="m--in">登 录</span>
            </div>
        </div>
        <%--注册成功之后刷新页面登录--%>
        <form action="${pageContext.request.contextPath}/userinfo?&service=register" method="post" onsubmit="return check()">
        <div class="form sign-up">
            <h2>立即注册</h2>
            <label style="margin: 0px auto 0">
                <span>用户名</span>
                <input type="text" name="username" id="ru"/>
                <span style="display: inline" id="nameTip"></span>
            </label>
            <label style="margin: 0px auto 0">
                <span>手机号</span>
                <input type="tel" name="telephone" id="rt"/>
                <span style="display: inline" id="teleTip"></span>
            </label>
            <label style="margin: 0px auto 0">
                <span>密码</span><input type="password" name="password" id="rp" placeholder="7-18位"/>
                <span style="display: inline" id="pwdTip"></span>
                <div id="ts" >
                    <div id="div1">
                        弱
                    </div>
                    <div id="div2">
                        中
                    </div>
                    <div id="div3">
                        强
                    </div>
                </div>
            </label>
            <label style="margin: 0px auto 0">
                <span>确认密码</span>
                <input type="password" name="checkpwd" id="rcp"/>
                <span style="display: inline" id="repwdTip"></span>
            </label>
            <label style="margin: 0px auto 0">
                <span>邮箱</span>
                <input type="email" name="umail" id="rm"/>
                <span style="display: inline" id="mailTip"></span>
            </label>
            <label style="margin: 0px auto 0">
                <div style="display: inline">
                    <input style=" display: inline;width:120px;height: 38px" type="text" name="mailcode"
                           placeholder="邮箱验证码" id="rcm"/>&nbsp;&nbsp;&nbsp;
                    <input type="button" style=" border-radius: 5px;width : 120px ; display: inline ;color: #edf5ed;
                    background-color: #36ab46" class="send" id="btn" value="发送验证码"/>
                </div>
            </label>

            <button type="submit" class="submit">注 册</button>
        </div>
        </form>
    </div>


</div>

<script src="../js/script.js"></script>

<script type="text/javascript">
    var oDivs=$("#ts")[0].getElementsByTagName("div");
    $(function (){
        var narr = document.cookie.match(new RegExp("(^| )" + "uname" + "=([^;]*)(;|$)"));
        var parr = document.cookie.match(new RegExp("(^| )" + "password" + "=([^;]*)(;|$)"));
        var rarr = document.cookie.match(new RegExp("(^| )" + "remember" + "=([^;]*)(;|$)"));
        $("#lu").val(unescape(narr[2]))
        $("#lp").val(unescape(parr[2]))
        console.log (unescape(narr[2]))
        console.log(unescape(parr[2]))
        console.log (unescape(rarr[2]))
       if("remember"==unescape(rarr[2])) {
           $("#remember")[0].checked=true
       }else {
           $("#remember")[0].checked=false
       }

        document.getElementById("btn").onclick=function (){
            send(this,15)
        }
        /*判断用户是否存在*/
        $("#ru").blur(function (){

            if($("#ru").val()!=""){
                $.post("${pageContext.request.contextPath}/userinfo",
                    {
                        username:$("#ru").val(),
                        service:"checkUserByName"
                    },
                    function(data,status){
                    if(data!=null){
                        $("#nameTip").html(data);
                    }
                    });
            }else {
                $("#nameTip").html("");
            }
        })
/*手机号验证*/
        $("#rt").keyup(function (){
            if(!/^(0|\+?86|17951)?(13[0-9]|15[012356789]|17[013678]|18[0-9]|14[57])[0-9]{8}$/.test($("#rt").val())){
                $("#teleTip").text("手机号格式不正确！");
            }else{
                $("#teleTip").text("");
            }

        })

        $("#rp").keyup(function (){
            for(var i=0;i<oDivs.length;i++){
                oDivs[i].style.backgroundColor="aliceblue";
            }
            if($("#rp").val().length<=6||$("#rp").val().length>18){

                $("#pwdTip").html("密码只能在7-18位！！");

            }else{
                $("#pwdTip").html("");
                /*判断密码的强度*/

                if((/^\d+$/.test($("#rp").val())||/^[a-z]+$/.test($("#rp").val())||/^[A-Z]+$/.test($("#rp").val()))){
                    oDivs[0].style.backgroundColor="red";
                }

                else  if(/\d/.test($("#rp").val())&&/[a-z]/.test($("#rp").val())&&/[A-Z]/.test($("#rp").val())){
                    oDivs[2].style.backgroundColor="green";
                }
                else{
                    oDivs[1].style.backgroundColor="orange  ";
                }
            }

        })
        $("#rcp").blur(function (){
            if($("#rp").val()!=$("#rcp").val()){
                $("#repwdTip").text("确认密码不一致！");
            }else{
                $("#repwdTip").text("");
            }

        })

        $("#rm").keyup(function () {
            if (!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test($("#rm").val())) {
                $("#mailTip").html("邮箱格式不正确！")

            } else {
                $("#mailTip").html("");
            }
        })




        /*返回密码登录*/
        $("#toemail").click(function (){
            window.location.href="${pageContext.request.contextPath}/jsp/emaillogin.jsp"
        })
    })
    /**
     * 控制ele的按钮在指定时间内禁止重复点击
     * @param ele 标签对象
     * @param time 禁用时间（s）
     */

    function send(ele, time) {
        if (!time) {
            ele.removeAttribute('disabled')
            return ele.value = '发送验证码'
        }

        ele.setAttribute('disabled', true)
        ele.value = time + '秒后重新发送'
        setTimeout(_ => send(ele, --time), 1000)
    }


     $("#btn").click(function () {
         if ($("#rm").val() == "") {
             alert("请填写邮箱")
         } else {
             $.post("${pageContext.request.contextPath}/userinfo",
                    {
                        umail: $("#rm").val(),
                        service: "sendemail"
                    },
                    function (data, status) {
                        if (data != null) {
                            alert(data.toString())
                        }
                    });
            }

        });


    $("#lu").blur(function (){
        $("#lus").html("");
    })
    /*阻止表单提交*/
    function check() {
        var arr = document.cookie.match(new RegExp("(^| )" + "emailcode" + "=([^;]*)(;|$)"));

        if ($("#ru").val() == "") {
            alert("请填写用户名");

            return false;
        }
        if ($("#rt").val() == "") {
            alert("请填写电话号码")
            return false;
        }
        if ($("#rp").val() == "") {
            alert("请填写密码")
            return false;
        }

        if ($("#rcp").val() == "") {
            alert("请填写确认密码")
            return false;
        }
        if ($("#rm").val() == "") {
            alert("请填写邮箱")
            return false;
        }
        if ($("#rcm").val() == "") {
            alert("请填写验证码")
            return false;
        }
        console.log(unescape(arr[2]))
        if ($("#rcm").val() !=unescape(arr[2])) {
            alert("验证码填写错误")
            return false;
        }

        else {
            alert("注册成功，请重新登录")
            return true;
        }
    }
</script>
</body>

</html>