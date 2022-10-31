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

    .form {
        position: relative;
        width: 870px;
        height: 100%;
        transition: -webkit-transform 0.6s ease-in-out;
        transition: transform 0.6s ease-in-out;
        transition: transform 0.6s ease-in-out, -webkit-transform 0.6s ease-in-out;
        padding: 50px 30px 0;
    }

</style>
<body>
<div class="content">
    <form action="${pageContext.request.contextPath}/userinfo?&service=emailLogin" method="post"
          onSubmit="return check();">
        <div class="form sign-in">
            <h2>欢迎使用邮箱登录</h2>
            <h6 style="text-align: center">${requestScope.loginfailmsg}</h6>
            <label>
                <span>用户名</span>
                <input type="text" name="uname" id="uname"/><span id="unametip"></span>
            </label>
            <label>
                <span>邮箱</span>
                <input type="email" name="umail" id="umail"/><span id="mtip"></span>
            </label>
            <label>
                <div style="display: inline">
                    <input style=" display: inline;width:120px;height: 38px" type="text" name="mailcode"
                           placeholder="输入邮箱验证码" id="rcm"/>&nbsp;&nbsp;
                    <input type="button" style=" border-radius: 5px;width : 120px ; display: inline ;color: #edf5ed;
                    background-color: #36ab46" class="send" id="btn" value="发送验证码"/><span id="lus"></span>
                </div>
            </label>
            <button type="submit" class="submit" id="mlogin">登 录</button>
            <button type="button" class="fb-btn" onclick="changelogin()" href="/jsp/login.jsp">使用用户名密码登录</button>
        </div>
    </form>

</div>

<script type="text/javascript">

    window.onload = function () {
        document.getElementById('btn').onclick = function () {
            send(this, 15)
        }
    }

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

    function changelogin() {
        window.location.href = "${pageContext.request.contextPath}/jsp/login.jsp"
    }


    $("#umail").keyup(function () {
        if (!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test($("#umail").val())) {
            $("#mtip").html("邮箱格式不正确！")
            $("#umail").blur(function () {
                $("#mtip").html("");
                $("h6").html("");
            })
        } else {
            $("#mtip").html("");
            $("h6").html("");
        }
    })


    $("#btn").click(function () {
        if (!/^\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/.test($("#umail").val())) {
            alert("邮箱格式不正确！");
        }else
        if ($("#umail").val() == "") {
            alert("请填写邮箱")
        } else {
            $.post("${pageContext.request.contextPath}/userinfo",
                {
                    umail: $("#umail").val(),
                    service: "sendemail"
                },
                function (data, status) {
                    if (data != null) {
                        alert(data.toString())
                    }
                });
        }


    })

    /*阻止表单提交*/
    function check() {
        var arr = document.cookie.match(new RegExp("(^| )" + "emailcode" + "=([^;]*)(;|$)"));

        if ($("#umail").val() == "") {
            alert("邮箱未填写");
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
        } else {
            return true;
        }
    }



</script>


</body>

</html>