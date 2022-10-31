<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Apple 独家</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Tillage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>
    <script type="application/x-javascript"> addEventListener("load", function () {
        setTimeout(hideURLbar, 0);
    }, false);

    function hideURLbar() {
        window.scrollTo(0, 1);
    } </script>
    <!-- bootstarp-css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <!--// bootstarp-css -->
    <!-- css -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
    <link href="css/bootstrap1.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="css/style1.css" rel='stylesheet' type='text/css'/>
    <!--// css -->
    <script src="js/jquery-1.11.1.min.js"></script>
    <!--fonts-->
    <link href='http://fonts.useso.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,800,700,600'
          rel='stylesheet' type='text/css'>
    <!--/fonts-->
    <link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
    <script src="js/wow.min.js"></script>
    <script>
        new WOW().init();
    </script>
</head>
<style>
    .delShopCart {
        width: 16px;
        height: 16px;
        margin-top: 15px
    }

    .addpic {
        height: 15px;
        width: 15px;
        margin-bottom: 4px;
    }

    .delpic {
        height: 18px;
        width: 18px;
        margin-bottom: 4px;
    }

    .picc {
        height: 45px;
        width: auto;
    }

    #titole img {
        height: 75px;
        width: 100px;
        margin-bottom: 20px;
    }

    #content a {
        color: #4c93da;
        margin-bottom: 50px;
    }

    #content button {
        background-color: #4c93da;
        color: white;
        border: 0px;
        border-radius: 15px;
        width: 60px;
        height: 26px;
        margin: 10px;
    }

    #content p {
        margin-top: 20px;
    }

    #content div {
        height: 450px;
        border-bottom: 1px solid #d2d2d7;
        margin-bottom: 20px;
    }

    #im img {
        border-radius: 15px;
    }
</style>
<body>
<!-- banner -->
<div class="banner a-banner">
    <!-- container -->
    <div class="container">
        <div class="header">
            <div class="head-logo">
                <a href="index.html"><img src="images/Home-logo.png" alt="" style="width:180px "/></a>
            </div>
            <div class="top-nav">
                <ul class="nav1">
                    <li class="hvr-sweep-to-bottom"><a href="index.jsp">主页<i>在这里，发现新的世界。</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="about.jsp">产品系列<i>产品都称心，体验更如意。</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="products.jsp">服务支持<i>来这里我们能帮上各种忙。</i></a></li>
                    <li class="hvr-sweep-to-bottom active"><a href="404.jsp">Apple 独家<i>高品质内容与服务，让你大显身手</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="mail.jsp">关于品牌<i>关注我们，了解我们，加入我们</i></a>
                        <div class="clearfix"></div>
                </ul>
                <!-- script-for-menu -->
                <script>
                    $("span.menu").click(function () {
                        $("ul.nav1").slideToggle(300, function () {
                            // Animation complete.
                        });
                    });
                </script>
                <!-- /script-for-menu -->
            </div>
            <div class="header_top" style="position: fixed;right: 100px;z-index: 999;width: 100px">
                <div class="header-bottom-right">
                    <ul class="icon1 sub-icon1 profile_img">
                        <div class="active-icon" style="margin-bottom: 10px;" id="login"><a class="c1"
                                                                                            href="/jsp/login.jsp">登录</a>
                        </div>
                        <div class="active-icon" style="margin-bottom: 10px;" id="my"><a class="c1"
                                                                                         href="/my-account.html">我的信息</a>
                        </div>
                        <li><a class="active-icon c1" href="#" id="cart">购物车</a>

                            <ul class="sub-icon1 list">
                                <h3><i>我的购物车</i></h3>
                                <div class="shopping_cart" style="width: 320px;">
                                    <div class="cart_box row" id="ShopCartContent">

                                    </div>
                                </div>
                                <div class="total">
                                    <div class="total_left">总价 :</div>
                                    <div class="total_right">￥<span id="TotalPrice">0.00</span></div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="login_buttons">
                                    <div class="login_button"><a href="javascript:void(0)" onclick="submitShopCart()">&nbsp;&nbsp;结&nbsp;&nbsp;算&nbsp;&nbsp;</a>
                                    </div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="clearfix"></div>
                            </ul>
                        </li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //banner -->
<!-- 404 -->
<div class="e-page">
    <!-- container -->
    <div class="container">
        <h3 class="wow fadeInLeft animated" data-wow-delay="0.4s"
            style="visibility: visible; -webkit-animation-delay: 0.4s;"><b>体验就是独到</b></h3>
        <h5 class="wow fadeInRight animated" data-wow-delay="0.4s"
            style="visibility: visible; -webkit-animation-delay: 0.4s;">以空间音频呈现的美妙音乐、种类繁多的播客节目，还有便捷可靠的支付方式，全由 Apple
            为你奉上</h5>
    </div>
    <!-- //container -->
</div>
<div class="banner-bottom" style="background-color: white">
    <!-- container -->
    <div class="container">
        <div class="banner-bottom-grids">
            <div class="col-md-7 banner-bottom-grid-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;	">
                    <h3><img src="images/404-music.png" style="width: 40px ;width: 40px;">
                        <i><b>Apple Music</b></i>
                    </h3>
                    <h5>空间音频支持杜比全景声， 首首让你沉醉</h5>
                    <p> Apple Music 声控方案是我们的订阅项目，由 Siri 为你提供专属音乐服务，让你能在各种 Apple 设备上畅听歌曲、歌单和电台，一切完全用语音来操控。只要一句“嘿
                        Siri，启动音乐声控”，马上听起来</p>
                    <div class="see-button">
                        <a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal" href="#" role="button">免费试用</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal" href="#" role="button">进一步了解</a>
                    </div>

                </div>
            </div>
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/music01.jpg" alt=""/>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //container -->
</div>
<div class="banner-bottom" style="background-color: white">
    <!-- container -->
    <div class="container">
        <div class="banner-bottom-grids">
            <div class="col-md-7 banner-bottom-grid-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;	">
                    <h3><img src="images/404-icloud.png" style="width: 40px ;width: 40px;">
                        <i><b>iCloud</b></i>
                    </h3>
                    <h5>保存照片和文件的好地方， 更有贴心功能帮你保护隐私。</h5>
                    <p> iCloud 内置在每一部 Apple 设备中。因此，你的照片、文件、备忘录等内容都能得到安全的保护和实时的更新，并能随处存取。每位用户都有 5GB 的免费 iCloud
                        存储空间，还可以随时升级到 iCloud+，获得隐藏邮件地址的新功能和更多存储容量。</p>
                    <div class="see-button">
                        <a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal" href="#" role="button">升级至iCloud+</a>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal" href="#" role="button">进一步了解</a>
                    </div>

                </div>
            </div>
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <br>
                <br>
                <br>
                <img src="images/404-icloud.jpg" alt=""/>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //container -->
</div>
<div class="banner-bottom" style="background-color: white">
    <!-- container -->
    <div class="container">
        <div class="banner-bottom-grids">
            <div class="col-md-7 banner-bottom-grid-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;	">
                    <h3><img src="images/404-pay-01.png" style="width: 60px ;width: 60px;">
                        <i><b>Apple Pay</b></i>
                    </h3>
                    <h5>免现支付，就该如此便捷。</h5>
                    <p> Apple Pay 简便易用，并且支持你日常所用的多款 Apple 设备。无需接触，你就能在店内或者 app 中安心完成支付。与以往许多支付手段相比，Apple Pay
                        更安全，也更简单易用。</p>
                    <div class="see-button">
                        <a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal" href="#">进一步了解</a>
                    </div>

                </div>
            </div>
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/404-pey.jpg" alt=""/>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //404 -->
<!-- footer -->
<div class="footer">
    <!-- container -->
    <div class="container">
        <div class="col-md-6 footer-left  wow fadeInLeft animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <ul>
                <li><a href="index.html">主页</a></li>
                <li><a href="about.html">产品系列</a></li>
                <li><a href="products.html">服务支持</a></li>
                <li><a href="404.html">Apple 独家</a></li>
                <li><a href="mail.html">关于品牌</a></li>
            </ul>
            <form>
                <input type="text" placeholder="邮箱" required="">
                <input type="submit" value="订阅">
            </form>
        </div>
        <div class="col-md-3 footer-middle wow bounceIn animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <h3>地址</h3>
            <div class="address">
                <p>福建省福州市闽侯县,
                    <span>高新区海西科技园万福中心2座6层</span>
                </p>
            </div>
            <div class="phone">
                <p>1234567890</p>
            </div>
        </div>
        <div class="col-md-3 footer-right  wow fadeInRight animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <img src="images/地图.jpg" style="height: 200px; width: 300px">
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- //container -->
</div>
<!-- //footer -->
<div class="copyright">
    <!-- container -->
    <div class="container">
        <div class="copyright-left wow fadeInLeft animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <p>SUN &copy; 2022.10.17 21：24</p>
        </div>
        <div class="copyright-right wow fadeInRight animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <ul>
                <li><a href="#" class="twitter"> </a></li>
                <li><a href="#" class="twitter facebook"> </a></li>
                <li><a href="#" class="twitter chrome"> </a></li>
                <li><a href="#" class="twitter pinterest"> </a></li>
                <li><a href="#" class="twitter linkedin"> </a></li>
                <li><a href="#" class="twitter dribbble"> </a></li>
            </ul>
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- //container -->
</div>
<span id="userinfoid" hidden>${userinfo.uid}</span>
<span id="userinfo" hidden>${userinfo}</span>
<span id="userinfomenber" hidden>${userinfo.menber}</span>
<span id="userinfoaccount" hidden>${userinfo.account}</span>
<script>
    function submitShopCart() {
        let money = $("#TotalPrice").text();
        var mo;
        var iF;
        let menber = $("#userinfomenber").text()
        let umoney=$("#userinfoaccount").text()
            if (umoney >= (money * 0.8) && menber == 1) {
                mo = umoney - (money * 0.8);
                iF = true;
                alert("支付成功！ 尊敬的会员为您打上八折");
            }
         else if (umoney >= money && menber == 0) {
            mo = umoney - money;
            alert("支付成功!");
            iF = true;
        } else {
            alert("支付失败，请充值钱包");
            iF = false;
        }
        if (iF == true) {
            var userId = $("#userinfoid").text()
            $.post("/orderServlet",
                {
                    Money: mo,
                    Userid: userId,
                    service: "addOrder"
                },
                function (data, status) {
                    initialization();
                });
        }
    }

    function addShopCart(event) {
        $.post("/ShopCart",
            {
                GoodsId: event.data.GoodsID,
                Userid: event.data.UserID,
                service: "addShopCart"
            },
            function (data, status) {
                initialization();
            });
    }


    function delShopCart(event) {
        $.post("/ShopCart",
            {
                ShopCartID: event.data.SCID,
                num: event.data.nums,
                service: "delShopCart"
            },
            function (data, status) {
                initialization();
            });
    }

    $(function (){
        initi();
        initialization();
    })

    function initi(){

        var uidd=$("#userinfoid").text()
        $.post("/userinfo",
            {
                uid: uidd,
                service: "querybyid"
            },
            function (data, status) {
                console.log("data" + data)
                var person = JSON.parse(data);
                console.log("person", person)
                $("#userinfoaccount").text(person.account);
                $("#userinfomenber").text(person.menber);
            });
    }

    function initialization() {

        if ($("#userinfo").text() == "") {
            $("#login").css("display", "block");
            $("#my").css("display", "none");
            $("#cart").css("display", "none");
        } else {
            $("#login").css("display", "none");
            $("#my").css("display", "block");
            $("#cart").css("display", "block");

            var userId = $("#userinfoid").text()
            $.post("/ShopCart",
                {
                    UserId: userId,
                    service: "getShopCartOV"
                },
                function (data, status) {
                    $("#ShopCartContent").text("");
                    var ShopCart = JSON.parse(data);

                    $("#total").text(ShopCart.size);
                    var totalMony = 0.00;
                    $(ShopCart).each(function () {
                        let route = this.gpic
                        var pic = $("<img/>").attr("src", route.substring(9)).addClass("picc");
                        var one = $("<div></div>").addClass("col-sm-3").append(pic).css("text-align", "center").css("margin-bottom", "10px");

                        var i1 = $("<i></i>").text(this.gname);
                        var b1 = $("<b></b>").append(i1);
                        var H51 = $("<h5></h5>").append(b1);
                        var a1 = $("<a></a>").append(H51).attr("herf", "javascript:void(0)");

                        var addPic = $("<img/>").attr("src", "images/减少.png").addClass("addpic");

                        var shopId = this.shopid;
                        var num = this.gnum;

                        var a2 = $("<a></a>").attr("href", "javascript:void(0)").append(addPic).bind("click", {
                            SCID: shopId,
                            nums: num
                        }, delShopCart);
                        var span1 = $("<span></span>").text(this.gnum).css("text-align", "center");
                        var delPic = $("<img/>").attr("src", "images/增加.png").addClass("delpic");

                        var goodsid = this.goods;

                        var userId = $("#userinfoid").text()

                        var a3 = $("<a></a>").attr("href", "javascript:void(0)").append(delPic).bind("click", {
                            GoodsID: goodsid,
                            UserID: userId
                        }, addShopCart);


                        var money = this.price * this.gnum;
                        // if(user.menber==1){
                        //     money=money*0.8;
                        // }
                        totalMony = totalMony + money;
                        var span2 = $("<span></span>").text(money + ".00")
                        var span3 = $("<span></span>").addClass("actual").css("float", "right").text("￥").append(span2);

                        var td1 = $("<td></td>").append(a2).css("width", "10px");
                        var td2 = $("<td></td>").append(span1).css("width", "20px");
                        var td3 = $("<td></td>").append(a3).css("width", "10px");
                        var td4 = $("<td></td>").append(span3).css("width", "150px").css("text-align", "right");
                        var tr1 = $("<tr></tr>").append(td1, td2, td3, td4).css("text-align", "center");
                        var tab = $("<table></table>").append(tr1);

                        var two = $("<div></div>").addClass("col-sm-7").append(a1, tab).css("margin-bottom", "10px");

                        var delshopcart = $("<img/>").attr("src", "images/DeleteImg.png").addClass("delShopCart");
                        var a4 = $("<a></a>").attr("href", "javascript:void(0)").append(delshopcart).bind("click", {
                            SCID: shopId,
                            nums: 1
                        }, delShopCart);
                        var three = $("<div></div>").addClass("col-sm-2").append(a4).css("margin-bottom", "10px");

                        var di = $("<div></div>").append(one, two, three);
                        $("#ShopCartContent").append(di);
                    });
                    $("#TotalPrice").text(totalMony + ".00");
                })
        }
        ;
    };
</script>
</body>
</html>
