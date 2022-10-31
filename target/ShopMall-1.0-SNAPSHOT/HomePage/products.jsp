<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>服务支持</title>
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
    <!-- pop-up -->
    <link rel="stylesheet" href="css/touchTouch.css" type="text/css" media="all"/>
    <script type="text/javascript" src="js/jquery.fancybox.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            /*
             *  Simple image gallery. Uses default settings
             */

            $('.fancybox').fancybox();

        });
    </script>
    <!-- pop-up -->
</head>
<style>
    .row img {
        height: 100px;
        width: 100px;
        margin-bottom: 20px;
    }

    #h p {
        padding-bottom: 5px;
        font-size: 15px;
    }

    #a p {
        padding-left: 20px;
        padding-bottom: 5px;
        font-size: 15px;
    }
</style>
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
                    <li class="hvr-sweep-to-bottom active"><a href="products.jsp">服务支持<i>来这里我们能帮上各种忙。</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="404.jsp">Apple 独家<i>高品质内容与服务，让你大显身手</i></a></li>
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
<div class="banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
     style="visibility: visible; -webkit-animation-delay: 0.5s;">
    <div style="width: 100%;height: auto;">
        <img src="images/支持.jpg" style="object-fit: cover ; width: 100%; height: 100%"/>
    </div>
</div>

<!-- products-top -->
<div class="products-top" style="background-color:white;padding-bottom: 100px;padding-top: 100px">
    <!-- container -->
    <div class="container">
        <div class="row" style="text-align: center">
            <div class="products-top-grids wow fadeInLeft animated" data-wow-delay="0.4s"
                 style="visibility: visible; -webkit-animation-delay: 0.4s;margin-top: 0">
                <div class="col-sm-2 "><img src="images/P1.png"/><br><a href="#">iPhone</a></div>
                <div class="col-sm-2 "><img src="images/P2.png"/><br><a href="#">Mac</a></div>
                <div class="col-sm-2 "><img src="images/P3.png"/><br><a href="#">iPad</a></div>
                <div class="col-sm-2 "><img src="images/P4.png"/><br><a href="#">Watch</a></div>
                <div class="col-sm-2 "><img src="images/P5.png"/><br><a href="#">AirPods</a></div>
                <div class="col-sm-2 "><img src="images/P6.png"/><br><a href="#">Music</a></div>
            </div>
        </div>
    </div>
</div>
<hr style="border: 1px ;margin: 1px; "/>

<div class="products-top" style="background-color: white;padding-bottom: 100px;padding-top: 100px">
    <!-- container -->
    <div class="container">
        <div class="wow fadeInRight animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <div class="col-md-4 ">
                <div style="text-align: center;border-right: #c7c7cc 1px solid">
                    <img src="images/P21.png" style="width: 50px;height: 50px;margin-bottom: 20px"/><br>
                    <a href="#">忘记 Apple ID 或密码 ></a>
                </div>
            </div>
            <div class="col-md-4 ">
                <div style="text-align: center;border-right: #c7c7cc 1px solid">
                    <img src="images/P22.png" style="width: 50px;height: 50px;margin-bottom: 20px"/><br>
                    <a href="#">Apple 维修 ></a>
                </div>
            </div>
            <div class="col-md-4 ">
                <div style="text-align: center">
                    <img src="images/P23.png" style="width: 50px;height: 50px;margin-bottom: 20px"/><br>
                    <a href="#">账单和订阅 ></a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>

<hr style="border: 1px ;margin: 1px; "/>

<!-- container -->
<div class="products-top-grids wow fadeInLeft animated"
     style="text-align: center;background-color: white; margin-top: 0px ;padding-top: 80px;padding-bottom: 80px">
    <h2 style="margin-top: 0px"><b>获取主题</b></h2>
    <input type="text" placeholder="搜索支持" style="width: 800px;height: 40px;margin-top: 20px">
</div>
<hr style="border: 1px ;margin: 1px; "/>

<div class="products-top" style=" padding-bottom: 30px;background-color: white;">
    <!-- container -->
    <div class="container">
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/ios16.png" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3 style="color: black; margin-bottom: 60px"><b>更新至 iOS 16</b></h3>
                    <h4>探索全新的个性化、隐私和安全性增强功能，以及更多无缝沟通的方式。</h4>
                    <a href="#" style="color: #0070c9;font-size: 17px;">了解如何获取最新系统 ></a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>

        <div class="banner-bottom-grids a-banner-bottom-grids" style=" padding-bottom: 30px">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/Trade.jpg" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3 style="color: black; margin-bottom: 60px"><b>通过 Apple Trade In 换购计划进行折抵换购</b></h3>
                    <h4>用符合条件的设备以旧换新，享受折抵优惠，或者由我们免费为您进行回收处理。Apple Trade In 换购计划能让您和地球都从中受益。</h4>
                    <a href="#" style="color: #0070c9;font-size: 17px;">进一步了解 ></a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids" style=" padding-bottom: 30px">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/app.png" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3 style="color: black; margin-bottom: 60px"><b>意外时有发生，AppleCare+ 服务计划随时提供保障。</b></h3>
                    <h4>获得不限次数的意外损坏保护维修，优先与 Apple 专家取得联系，等等。</h4>
                    <a href="#" style="color: #0070c9;font-size: 17px;">进一步了解 AppleCare+ 服务计划 ></a>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<hr style="border: 1px ;margin: 1px; "/>
<div class="products-top" style=" padding-bottom: 30px;background-color: white;">
    <!-- container -->
    <div class="container">

        <div class="products-top-grids wow fadeInLeft animated row" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">

            <div class="col-md-6 products-grid">
                <div class="products-text" style="padding-left: 100px">
                    <h4>了解 Apple 在中国大陆的服务和保修政策 </h4>
                    <a href="#" style="color:#0070c9;font-size: 17px">了解保修和服务选项</a>
                </div>
            </div>
            <div class="col-md-6 products-grid" style="padding-left: 100px">
                <div class="products-text">
                    <h4>查看你的保障服务和支持期限</h4>
                    <h5>进一步了解你的 Apple 有限保修或 AppleCare 产品保障状态。</h5>
                    <a href="#" style="color:#0070c9;font-size: 17px">立即查看 ></a>
                </div>
            </div>

        </div>
    </div>
</div>
<hr style="border: 1px ;margin: 1px; "/>
<!-- container -->
<div style="background-color: white">
    <div class="container">
        <div class="banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
             style="text-align: center;background-color: white; margin-top: 0px ;padding-top: 80px;padding-bottom: 80px">
            <h2 style="margin-top: 0px;margin-bottom: 30px"><b>确保 Apple ID 的安全</b></h2>
            <h4 style="margin-bottom: 30px">了解一些简单的防护技巧，以确保你的 Apple ID 和信息的安全</h4>
            <a href="#" style="color:#0070c9;font-size: 17px">保护你的 Apple ID</a>
        </div>
    </div>

    <hr style="border: 1px #f5f5f7 solid ;margin: 1px; "/>
    <!-- container -->
    <div class="container" id="h">
        <div class="products-top-grids wow fadeInLeft animated"
             style="text-align: center;background-color: white; margin-top: 0px ;padding-top: 80px;padding-bottom: 80px">
            <h3 style="margin-top: 0px;margin-bottom: 30px"><b>留心假冒部件</b></h3>
            <p>某些假冒和第三方的电源适配器及电池可能设计不当，有可能会导致安全问题。为了确保你在更换电池时能够获得正品</p>
            <p>Apple 电池，我们建议你前往 <a href="#" style="color: #0070c9">Apple Store 商店</a>或 <a href="#"
                                                                                          style="color: #0070c9">Apple
                授权服务提供商处</a>>。如果你需要更换一个新的适配器来为你的</p>
            <p style="padding-bottom: 20px"> Apple 设备充电，我们建议你选择 Apple 的电源适配器。</p>
            <p>此外，非正品显示屏更换件可能会使画质受损，并且可能无法正常工作。Apple 认证的屏幕维修是由可信赖的专家使用</p>
            <p> Apple 正品部件进行的。</p>
        </div>
    </div>
</div>

<hr style="border: 1px ;margin: 1px; "/>

<div style="background-color: white">
    <div class="container">
        <div id="a" class="banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
             style="text-align: center;background-color: white; margin-top: 0px ;padding-top: 80px;padding-bottom: 80px;text-align: left;padding-left: 150px">
            <h3 style="margin-top: 0px;margin-bottom: 30px"><b>Apple 服务计划</b></h3>
            <p><a href="#" style="color: #0070c9">适用于黑屏问题的 Apple Watch Series 6 服务计划</a></p>
            <p><a href="#" style="color: #0070c9">适用于“无声音”问题的 iPhone 12 和 iPhone 12 Pro 服务计划</a></p>
            <p><a href="#" style="color: #0070c9">适用于触控问题的 iPhone 11 显示屏模块更换计划</a></p>
            <p><a href="#" style="color: #0070c9">15 英寸 MacBook Pro 电池召回计划</a></p>
            <p><a href="#" style="color: #0070c9">Apple 三插交流电源插头转换器召回计划</a></p>
            <p><a href="#" style="color: #0070c9">查看所有计划 ></a></p>
        </div>
    </div>
</div>
<!-- products-bottom -->
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
                        var pic = $("<img/>").attr("src",route.substring(9) ).addClass("picc");
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
