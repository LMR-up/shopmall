<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>ε³δΊεη</title>
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
                    <li class="hvr-sweep-to-bottom"><a href="index.jsp">δΈ»ι‘΅<i>ε¨θΏιοΌεη°ζ°ηδΈηγ</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="about.jsp">δΊ§εη³»ε<i>δΊ§ει½η§°εΏοΌδ½ιͺζ΄ε¦ζγ</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="products.jsp">ζε‘ζ―ζ<i>ζ₯θΏιζδ»¬θ½εΈ?δΈεη§εΏγ</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="404.jsp">Apple η¬ε?Ά<i>ι«εθ΄¨εε?ΉδΈζε‘οΌθ?©δ½ ε€§ζΎθΊ«ζ</i></a></li>
                    <li class="hvr-sweep-to-bottom active"><a href="mail.jsp">ε³δΊεη<i>ε³ζ³¨ζδ»¬οΌδΊθ§£ζδ»¬οΌε ε₯ζδ»¬</i></a>
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
                                                                                            href="/jsp/login.jsp">η»ε½</a>
                        </div>
                        <div class="active-icon" style="margin-bottom: 10px;" id="my"><a class="c1"
                                                                                         href="/my-account.html">ζηδΏ‘ζ―</a>
                        </div>
                        <li><a class="active-icon c1" href="#" id="cart">θ΄­η©θ½¦</a>

                            <ul class="sub-icon1 list">
                                <h3><i>ζηθ΄­η©θ½¦</i></h3>
                                <div class="shopping_cart" style="width: 320px;">
                                    <div class="cart_box row" id="ShopCartContent">

                                    </div>
                                </div>
                                <div class="total">
                                    <div class="total_left">ζ»δ»· :</div>
                                    <div class="total_right">οΏ₯<span id="TotalPrice">0.00</span></div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="login_buttons">
                                    <div class="login_button"><a href="javascript:void(0)" onclick="submitShopCart()">&nbsp;&nbsp;η»&nbsp;&nbsp;η?&nbsp;&nbsp;</a>
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
            <h3>ζζ°ζΆζ―</h3>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/news-ε₯ι©°.jpg" alt="" style="width: 445px;height: 250px; border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3>Apple Music δΈζ’θ΅εΎ·ζ―-ε₯ι©°εδ½οΌδΈΊι©Ύι©ΆθεΈ¦ζ₯ι«θ΄¨ιζ²ζ΅ΈεΌη©Ίι΄ι³ι’δ½ιͺ</h3>
                    <h5>ε·΄ι» Apple εζ’θ΅εΎ·ζ―-ε₯ι©°δ»ζ₯ε?£εΈοΌApple Music
                        ε€εθ΅θͺηζ―ζζζ―ε¨ζ―ε£°ηη©Ίι΄ι³ι’η°ε·²δ½δΈΊζ’θ΅εΎ·ζ―-ε₯ι©°ζ±½θ½¦ηεηδ½ιͺι¦εΊ¦ζ¨εΊοΌδ»₯ε?η°εζΉε±εηη?ζ ββδΈΊε¨ηι‘Ύε?’εη°ζδ½³ι³δΉδ½ιͺγ</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/news-εΊθ΄ε€ε.jpg" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3>iPad Pro ε½»εΊζΉεθε€ε­¦θδΏε­εΊθ΄ε€εεε²ηζΉεΌ</h3>
                    <h5>ζ­€εδΈε€©οΌε­¦θδ»¬ε¨δΈι΄ε€η½ι©¬ε¨ζΏεεη°δΊδΈη?±δΊΊε·₯εΆεγεζε’ιθ΄θ΄£δΊΊγζε°ε€§ε­¦οΌTulane UniversityοΌζζ Allison Emmerson
                        εε£«ηΈδΏ‘ε·₯δ½ε°ζͺε?ζοΌθΏζεε?Ήη­εΎεη°γζ―δΈζ¬‘ζ°εη°ι½ζδΎδΊζ°ηΊΏη΄’οΌεΈ?ε©ε­¦θδ»¬δΊθ§£ε€ειεεεΆε±ζ°θεηζδΊγ </h5>
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
                    <h3>δΊε¨εΌ Q&A δΈδΈε―ΉδΈε¨θ―’η³»εζ΄»ε¨οΌθ?©εΌεθη΄ζ₯δΈ Apple δΈε?ΆδΊ€ζ΅ζ²ι</h3>
                    <h5>Apple δ»ζ₯ε?£εΈζ¨εΊ Ask AppleοΌθΏζ―δΈι‘Ήε¨ζ°ηδΊε¨εΌ QοΌA εδΈε―ΉδΈε¨θ―’η³»εζ΄»ε¨οΌδΈΊεΌεθζδΎζ΄ε€ζΊδΌδΈ Apple δΈε?Άη΄ζ₯δΊ€ζ΅ζ²ιοΌθ·εζ΄θ§γζ―ζδΈει¦γ εδΈ Ask
                        Apple ηεΌεθε―δ»₯ε°±ε€η§δΈ»ι’ε±εΌε¨θ―’οΌεζ¬ζ΅θ―ζζ° seedοΌ</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/news-ζθ‘¨.jpg" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3>watchOS 9 δ»ζ₯ζ­£εΌεεΈ ε¨ζ°θ‘¨ηγε’εΌΊηδ½θ½θ?­η»γη‘η ιΆζ?΅οΌηηΆδΈζ°ηζειηιδΊδΈθΊ«</h3>
                    <h5>Apple δ»ζ₯ζ¨εΊ watchOS 9οΌη»ε¨ηι’εηε―η©Ώζ΄ζδ½η³»η»εΈ¦ζ₯θ―Έε€ζ°εθ½εδ½ιͺζεγApple Watch
                        η¨ζ·η°ζ₯ζζ΄ε€θ‘¨ηιι‘ΉοΌζ΄δΈ°ε―ηε€ζεθ½δ»₯ε±η€Ίζ΄ε€δΏ‘ζ―οΌε’θΏδΈͺζ§εδ½ιͺγ</h5>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="banner-bottom-grids a-banner-bottom-grids">
            <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
                 style="visibility: visible; -webkit-animation-delay: 0.5s;">
                <img src="images/news-ζθ².jpg" alt="" style="width: 445px;height: 250px;border-radius: 15px">
            </div>
            <div class="col-md-7 a-banner-bottom-text">
                <div class="jumbotron banner-bottom-left wow fadeInLeft animated animated" data-wow-delay="0.5s"
                     style="visibility: visible; -webkit-animation-delay: 0.5s;">
                    <h3>Apple ζε±η€ΎεΊζθ²θ?‘εοΌε¨θΆθΏ 600 δΈͺη€ΎεΊε ιζδΎε­¦δΉ ζΊδΌ</h3>
                    <h5>ε δΈͺζζεοΌε ε·ε·η«ε€§ε­¦ε€ζζ Όζ―ε±±εζ ‘οΌCSUDHοΌθΏζ₯δΊ 300 ε€εζ₯θͺζ΄ζηΆεε°ηδΈ­ε°ε­¦ηοΌε¨ STEM ζθ²εζ°δΈ­εΏοΌCISEοΌηε?ιͺε?€δΈ­εε βSTEAM Maxβδ½ιͺγ</h5>
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
                <h3><b>ε ε₯ζδ»¬</b></h3>
                <br><br>
                <img src="images/ε ε₯.jpg" style="height: 235px;width: 500px"/>
            </div>
            <div class="col-md-6 contact-form wow fadeInRight animated" data-wow-delay="0.4s"
                 style="visibility: visible; -webkit-animation-delay: 0.4s;">
                <form>
                    <input type="text" placeholder="ε§ε" required="">
                    <input type="text" placeholder="θη³»ζΉεΌ" required="">
                    <input type="text" placeholder="δΈ»ι’" required="">
                    <textarea placeholder="εε?Ή" required></textarea>
                    <input type="submit" value="ει">
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
                <li><a href="index.html">δΈ»ι‘΅</a></li>
                <li><a href="about.html">δΊ§εη³»ε</a></li>
                <li><a href="products.html">ζε‘ζ―ζ</a></li>
                <li><a href="404.html">Apple η¬ε?Ά</a></li>
                <li><a href="mail.html">ε³δΊεη</a></li>
            </ul>
            <form>
                <input type="text" placeholder="ι?η?±" required="">
                <input type="submit" value="θ?’ι">
            </form>
        </div>
        <div class="col-md-3 footer-middle wow bounceIn animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <h3>ε°ε</h3>
            <div class="address">
                <p>η¦ε»Ίηη¦ε·εΈι½δΎ―εΏ,
                    <span>ι«ζ°εΊζ΅·θ₯Ώη§ζε­δΈη¦δΈ­εΏ2εΊ§6ε±</span>
                </p>
            </div>
            <div class="phone">
                <p>1234567890</p>
            </div>
        </div>
        <div class="col-md-3 footer-right  wow fadeInRight animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <img src="images/ε°εΎ.jpg" style="height: 200px; width: 300px">
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
            <p>SUN &copy; 2022.10.17 21οΌ24</p>
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
                alert("ζ―δ»ζεοΌ ε°ζ¬ηδΌεδΈΊζ¨ζδΈε«ζ");
            }
         else if (umoney >= money && menber == 0) {
            mo = umoney - money;
            alert("ζ―δ»ζε!");
            iF = true;
        } else {
            alert("ζ―δ»ε€±θ΄₯οΌθ―·εεΌι±ε");
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

                        var addPic = $("<img/>").attr("src", "images/εε°.png").addClass("addpic");

                        var shopId = this.shopid;
                        var num = this.gnum;

                        var a2 = $("<a></a>").attr("href", "javascript:void(0)").append(addPic).bind("click", {
                            SCID: shopId,
                            nums: num
                        }, delShopCart);
                        var span1 = $("<span></span>").text(this.gnum).css("text-align", "center");
                        var delPic = $("<img/>").attr("src", "images/ε’ε .png").addClass("delpic");

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
                        var span3 = $("<span></span>").addClass("actual").css("float", "right").text("οΏ₯").append(span2);

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
