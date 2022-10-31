<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>关于品牌</title>
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
    <!-- css -->
    <link rel="stylesheet" href="css/style.css" type="text/css" media="all"/>
    <!--// css -->
    <!-- bootstarp-css -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all"/>
    <link href="css/bootstrap1.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="css/style1.css" rel='stylesheet' type='text/css'/>
    <!--// bootstarp-css -->
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
                    <li class="hvr-sweep-to-bottom"><a href="404.jsp">Apple 独家<i>高品质内容与服务，让你大显身手</i></a></li>
                    <li class="hvr-sweep-to-bottom active"><a href="mail.jsp">关于品牌<i>关注我们，了解我们，加入我们</i></a>
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
<!-- mail -->
<div class="about-top">
    <!-- container -->
    <div class="container">
        <div class="about-info wow fadeInLeft animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <h3>最新消息</h3>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/news-奔驰.jpg" alt="" style="width: 445px;height: 250px; border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3>Apple Music 与梅赛德斯-奔驰合作，为驾驶者带来高质量沉浸式空间音频体验</h3>
                    <h5>巴黎 Apple 和梅赛德斯-奔驰今日宣布，Apple Music
                        备受赞誉的支持杜比全景声的空间音频现已作为梅赛德斯-奔驰汽车的原生体验首度推出，以实现双方共同的目标——为全球顾客呈现最佳音乐体验。</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/news-庞贝古城.jpg" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3>iPad Pro 彻底改变考古学者保存庞贝古城历史的方式</h3>
                    <h5>此前一天，学者们在一间古罗马厨房内发现了一箱人工制品。发掘团队负责人、杜兰大学（Tulane University）教授 Allison Emmerson
                        博士相信工作尚未完成，还有内容等待发现。每一次新发现都提供了新线索，帮助学者们了解古城遗址及其居民背后的故事。 </h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/news-Ask.jpg" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3>互动式 Q&A 与一对一咨询系列活动，让开发者直接与 Apple 专家交流沟通</h3>
                    <h5>Apple 今日宣布推出 Ask Apple，这是一项全新的互动式 Q＆A 和一对一咨询系列活动，为开发者提供更多机会与 Apple 专家直接交流沟通，获取洞见、支持与反馈。 参与 Ask
                        Apple 的开发者可以就多种主题展开咨询，包括测试最新 seed；</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/news-手表.jpg" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3>watchOS 9 今日正式发布 全新表盘、增强版体能训练、睡眠阶段，焕然一新的指南针皆集于一身</h3>
                    <h5>Apple 今日推出 watchOS 9，给全球领先的可穿戴操作系统带来诸多新功能和体验提升。Apple Watch
                        用户现拥有更多表盘选项，更丰富的复杂功能以展示更多信息，增进个性化体验。</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/news-教育.jpg" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3>Apple 拓展社区教育计划，在超过 600 个社区加速提供学习机会</h3>
                    <h5>几个星期前，加州州立大学多明格斯山分校（CSUDH）迎来了 300 多名来自洛杉矶各地的中小学生，在 STEM 教育创新中心（CISE）的实验室中参加“STEAM Max”体验。</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //container -->
</div>
<div class="mail" style="background-color:#f1efef">
    <!-- container -->
    <div class="container">
        <div class="mail-grids">
            <div class="col-md-6 mail-grid-left wow fadeInLeft animated" data-wow-delay="0.4s"
                 style="visibility: visible; -webkit-animation-delay: 0.4s;">
                <h3><b>加入我们</b></h3>
                <br><br>
                <img src="images/加入.jpg" style="height: 235px;width: 500px"/>
            </div>
            <div class="col-md-6 contact-form wow fadeInRight animated" data-wow-delay="0.4s"
                 style="visibility: visible; -webkit-animation-delay: 0.4s;">
                <form>
                    <input type="text" placeholder="姓名" required="">
                    <input type="text" placeholder="联系方式" required="">
                    <input type="text" placeholder="主题" required="">
                    <textarea placeholder="内容" required></textarea>
                    <input type="submit" value="发送">
                </form>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //mail -->
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
