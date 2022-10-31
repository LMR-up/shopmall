<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<html lang="zh-CN">
<head>
    <title>主页</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="keywords" content="Tillage Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design"/>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.2/dist/js/bootstrap.bundle.min.js"></script>
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
<div class="banner">
    <!-- container -->
    <div class="container">
        <div class="header">
            <div class="head-logo">
                <a href="index.html"><img src="images/Home-logo.png" alt="" style="width:180px "/></a>
            </div>
            <div class="top-nav">

                <ul class="nav1 ">
                    <li class="hvr-sweep-to-bottom active"><a href="index.jsp">主页<i>在这里，发现新的世界。</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="about.jsp">产品系列<i>产品都称心，体验更如意。</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="products.jsp">服务支持<i>来这里我们能帮上各种忙。</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="404.jsp">Apple 独家<i>高品质内容与服务，让你大显身手</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="mail.jsp">关于品牌<i>关注我们，了解我们，加入我们</i></a>
                    </li>
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
                        <div class="active-icon" style="margin-bottom: 10px;"><a id="login" class="c1"
                                                                                 href="/jsp/login.jsp">登录</a></div>
                        <div class="active-icon" style="margin-bottom: 10px;"><a class="c1" href="/my-account.html"
                                                                                 id="my">我的信息</a></div>
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
    <div class="products-top-grids wow fadeInLeft animated" data-wow-delay="0.4s"
         style="visibility: visible; -webkit-animation-delay: 0.4s;">
        <div id="demo" class="carousel slide" data-bs-ride="carousel" style="margin-top: 50px">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
            </div>

            <!-- The slideshow/carousel -->
            <div class="carousel-inner" style="background-color: #f5f5f7">
                <div class="carousel-item active">
                    <img src="images/Home-lun-1.jpg" alt="Shanghai" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h2><i>未来到家</i>把家变智能，家家都有好理由。</h2>
                        <p>只要连上你常用的设备，就能把家变成智能、便捷，又充满乐趣的安乐窝。点点 iPhone 或动动嘴，就能操控灯光、门锁和恒温器；无论你人在哪里，都能在各个房间播放想听的歌。</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/Home-lun-2.jpg" alt="Beijing" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h2 style="color: black"><i>iPad&nbsp;&nbsp;</i>焕然一新，多彩登场</h2>
                        <p style="color: #666668">新采用全面屏设计，配上 10.9 英寸 Liquid 视网膜显示屏1，还有四种鲜明色彩可选。无论是完成工作、进行创作还是在线联系，iPad
                            都是一把好手。</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images/Home-lun-3.jpg" alt="Wuhan" class="d-block" style="width:100%">
                    <div class="carousel-caption">
                        <h2><i>iPad pro</i> M2芯片 强势驱动</h2>
                        <p>震撼性能、超先进显示屏、疾速无线网络连接、Apple Pencil 高维玩法、种种 iPadOS 16 强大新功能，终极 iPad 体验，在此合体。</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>

    </div>
</div>


<!-- //banner -->
<!-- banner-bottom -->
<div class="banner-bottom">
    <!-- container -->
    <div class="container">
        <div class="banner-bottom-grids">
            <div class="col-md-7 banner-bottom-grid-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;	">
                    <h3>新款
                        <i><b>iPhone 14</b></i>
                        玩大玩超大
                    </h3>
                    <h5>锁定屏幕的新玩法，iOS 16 给你解锁了。墙纸照片有了分层效果，立体感十足。健身记录圆环也可以放上来，好随时看看进度。常用 app 传来新动静，在这儿就能一目了然。
                    </h5>
                    <p> OLED 技术带来超高对比度，白是亮亮的白，黑是纯纯的黑。高分辨率和色彩精准度让一切看起来都清晰锐利，生动鲜活。原彩显示技术会根据周围环境光调节屏幕显示，让眼睛舒服点。配备 5 核图形处理器的
                        A15 仿生，无论是强劲驱动各种新功能，还是流畅运行各款图形密集型游戏、增强现实 app，都跟玩儿似的。
                        机体内部设计也升级了，散热表现更出色，飙高速更持久。</p>
                    <div class="see-button">
                        <a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal" href="#" role="button">See
                            More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/Home-iphone14.jpg" alt=""/>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //container -->
</div>
<div class="banner-bottom" style="background-color: black">
    <!-- container -->
    <div class="container">
        <div class="banner-bottom-grids">
            <div class="col-md-7 banner-bottom-grid-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;	">
                    <h3 style="color:white;">
                        <i><b>iPhone 14pro</b></i>
                        强力出圈
                    </h3>
                    <h5 style="color: #979595">灵动的 iPhone 新玩法，迎面而来。重大的安全新功能，为拯救生命而设计。创新的 4800 万像素主摄，让细节纤毫毕现。更有 iPhone
                        芯片中的速度之王，为一切提供强大原动力。
                    </h5>
                    <p style="color: #cecece">超瓷晶面板硬度胜过玻璃面板，机身防溅抗水2，边框由手术级不锈钢打造，搭配 6.1 英寸和 6.7 英寸屏幕3，以四款颜色演绎 Pro
                        级的精彩。全新登场的灵动岛功能，既是硬件又是软件，将两者融为一体，尽显 Apple 创新本色。它会以醒目的方式弹出音乐、赛事比分、FaceTime
                        通话等各种消息，让你不必放下手头的事情，就能轻松与 iPhone 交互。</p>
                    <div class="see-button">
                        <a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal" href="#" role="button">See
                            More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;overflow: hidden;height: 402px;width: 445px;display: inline-block;">
                <div style="background-image: url('images/Home-iphone14pro1.jpg');height: 370px;width: 500px;background-position: center;display: inline-block;background-size: 113%"></div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- //banner-bottom -->
<!-- specialty -->
<div class="banner-bottom" style="background-color: #f7f7f7">
    <!-- container -->
    <div class="container">
        <div class="banner-bottom-grids">
            <div class="col-md-7 banner-bottom-grid-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;	">
                    <h3>
                        <i><b>WATCH Ultra</b></i>
                        越野越心驰
                    </h3>
                    <h5>Apple Watch 坚固的巅峰，实力的顶峰。强韧的钛金属表壳，精准的双频 GPS，最长 36 小时的电池续航1，还有便利的蜂窝网络功能2，满载一身。更搭配三款专用表带，随时迎接各种挑战。
                    </h5>
                    <p>
                        为打造这只超强的运动手表，我们精心打磨每处设计，反复钻研每个细节，力求带来突破极限的性能表现。钛金属能巧妙平衡重量和坚固，更具出色抗腐蚀性。全新的表壳设计，边缘隆起以保护平面蓝宝石玻璃表镜免受冲击。还有更大的数码表冠和凸出的侧边按钮，用起来更容易，戴着手套也能轻松操控。</p>
                    <div class="see-button">
                        <a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal" href="#" role="button">See
                            More</a>
                    </div>
                </div>
            </div>
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <br><br><br>
                <img src="images/home-手表1.jpg" alt=""/>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <!-- //container -->
</div>
<div class="specialty" style="background-color: #f5f5f7">
    <!-- container -->
    <div class="container">
        <div class="col-md-5 specialty-info wow fadeInLeft animated" data-wow-delay="0.5s"
             style="visibility: visible; -webkit-animation-delay: 0.5s;">
            <h3>我们的服务</h3>
            <h5>使用一个 Apple ID 和密码即可访问所有 Apple 服务。 </h5>
            <p>登录以管理你的帐户。查看或更新姓名、密码和安全设置等重要信息，以及联系方式、付款信息和管理连接帐户的设备。
                <span>帐户具备隐私性和安全性。通过双重认证等帐户安全功能，Apple 可以确保帐户安全、保护隐私，并让你随时掌握个人信息。</span>
            </p>
            <div class="see-button">
                <a class="btn btn-primary btn-lg see-button hvr-shutter-out-horizontal specialty-button" href="#"
                   role="button">See More</a>
            </div>
        </div>
        <div class="col-md-7 specialty-grids">
            <div class="specialty-grids-top">
                <div class="col-md-6 service-box wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <h5>Apple Trade In 换购计划</h5>
                    <p>你可以折抵符合条件的设备，在换购新设备时享受折抵优惠，或者由我们免费为您进行回收处理。</p>
                </div>
                <div class="col-md-6 service-box wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <h5>AppleCare+ 保障</h5>
                    <p>意外发生时，AppleCare+ 服务计划随时提供保障。一站式技术支持、硬件服务及软件支持。</p>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="specialty-grids-top">
                <div class="col-md-6 service-box wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <h5>我的支持</h5>
                    <p>您可以获取有关您的维修、预约和技术支持案例的最新信息，购买或注册 AppleCare 产品。</p>
                </div>
                <div class="col-md-6 service-box wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <h5>确保 Apple ID 的安全</h5>
                    <p>打开双重认证、对密码进行保护，都有助于确保您的 Apple ID 和信息的安全。</p>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <!-- //container -->
</div>
<!-- //specialty -->
<!-- testimonials -->
<div class="testimonials">
    <div class="container">
        <div class="testimonial-nfo wow bounceIn animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <h3>道德与合规</h3>
            <h5>即使不容易，我们也会做正确的事。
                <span>蒂姆·库克</span></h5>
        </div>
        <div class="testimonial-grids wow bounceIn animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <div class="testimonial-grid">
                <p>
                    苹果公司以道德、诚实和完全遵守法律的方式开展业务。我们相信，对于苹果的成功来说，我们的行为方式与制造世界上最好的产品一样至关重要。我们的商业行为和合规政策是我们如何开展业务以及如何将我们的价值观付诸实践的基础。</p>
            </div>
        </div>
    </div>
</div>
<!-- //testimonials -->
<!-- news -->
<div class="news">
    <div class="container">
        <div class="news-text">
            <h3>最新消息</h3>
        </div>
        <div class="news-grids">
            <div class="col-md-3 news-grid wow bounceIn animated" data-wow-delay="0.4s"
                 style="visibility: visible; -webkit-animation-delay: 0.4s;">
                <h4>Apple 面向开发者推出 Ask Apple</h4>
                <span>2022年10月11日</span>
                <img src="images/Home-news-1.jpg" alt=""/>
                <div class="news-info">
                    <p>Apple 今日宣布推出 Ask Apple，这是一项全新的互动式 Q＆A 和一对一咨询系列活动，为开发者提供更多机会与 Apple 专家直接交流沟通，获取洞见、支持与反馈。</p>
                </div>
            </div>
            <div class="col-md-3 news-grid wow bounceIn animated" data-wow-delay="0.4s"
                 style="visibility: visible; -webkit-animation-delay: 0.4s;">
                <h4>西语裔和拉丁裔，用技术打破障碍
                </h4>
                <span>2022年10月06日</span>
                <img src="images/Home-news-2.jpg" alt=""/>
                <div class="news-info">
                    <p>款真正出色的 app 往往能反映出其创作者的经历。全球各地的企业家不断在 App Store 上发布
                        app，提供富有意义的沟通、共情渠道，让世界对所有人变得更包容、更便利，同时弘扬创作者丰富的文化传统与身份特性。</p>
                </div>
            </div>
            <div class="col-md-3 news-grid wow bounceIn animated" data-wow-delay="0.4s"
                 style="visibility: visible; -webkit-animation-delay: 0.4s;">
                <h4>iPhone 14 Plus 周五起正式发售</h4>
                <span>2022年10月06日</span>
                <img src="images/Home-news-3.jpg" alt=""/>
                <div class="news-info">
                    <p>配备 6.7 英寸显示屏、升级双摄系统、车祸检测功能、A15 仿生芯片，并具有 iPhone 迄今最佳电池续航能力的 iPhone 14 Plus 将于 10 月 7 日（周五）起在 Apple
                        Store 零售店与 Apple 授权经销商正式发售。</p>
                </div>
            </div>
            <div class="col-md-3 news-grid wow bounceIn animated" data-wow-delay="0.4s"
                 style="visibility: visible; -webkit-animation-delay: 0.4s;">
                <h4>Apple 拓展社区教育计划</h4>
                <span>2022年10月04日</span>
                <img src="images/Home-news-4.jpg" alt=""/>
                <div class="news-info">
                    <p>。这项活动为来自不同背景的参与者提供机会，学习包括 app 设计在内的新科技技能。就在同一周，这所大学还在 6 所小学与中学开办了课余编程俱乐部，并开始定期在周六举办 STEM 探索日活动，由
                        CSUDH 计算机科学专业学生担任讲师。</p>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
</div>
<!-- //news -->
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
<span id="userinfomenber" hidden></span>
<span id="userinfoaccount" hidden></span>
<script>
    function submitShopCart() {
        let money = $("#TotalPrice").text();
        var mo;
        var iF;
        let menber = $("#userinfomenber").text()
        let umoney = $("#userinfoaccount").text()

        if (umoney >= (money * 0.8) && menber == 1) {
            mo = umoney - (money * 0.8);
            iF = true;
            alert("支付成功！ 尊敬的会员为您打上八折");
        } else if (umoney >= money && menber == 0) {
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

    $(function () {
        initi();
        initialization();
    })

    function initi() {

        var uidd = $("#userinfoid").text()
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
                $("#userinfomenber").text(person.menber)
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
            console.log(userId)
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
                });
        }
    };

</script>
</body>
</html>
