
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>访问失败页面</title>
    <script src="/jquery/jquery3.6.1.js"></script>
</head>
<body>
<h1>该页面管理员需要登录后才能访问，请登录</h1>
<button onclick="returnlogin()">返回登录界面</button>

<script type="text/javascript">
    function returnlogin(){
        window.location.href="/"
    }
</script>
</body>
</html>
