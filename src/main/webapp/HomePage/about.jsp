<%--
  Created by IntelliJ IDEA.
  User: 36229
  Date: 2022/10/28
  Time: 14:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>About</title>
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
    <!--// css -->
    <script src="https://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
    <!--fonts-->
    <link href="css/bootstrap1.css" rel='stylesheet' type='text/css'/>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <!-- Custom Theme files -->
    <link href="css/style1.css" rel='stylesheet' type='text/css'/>
    <!-- Custom Theme files -->
    <!--webfont-->
    <link href='http://fonts.useso.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
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
                    <li class="hvr-sweep-to-bottom"><a href="index.jsp">??????<i>?????????????????????????????????</i></a></li>
                    <li class="hvr-sweep-to-bottom active"><a href="about.jsp">????????????<i>????????????????????????????????????</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="products.jsp">????????????<i>????????????????????????????????????</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="404.jsp">Apple ??????<i>?????????????????????????????????????????????</i></a></li>
                    <li class="hvr-sweep-to-bottom"><a href="mail.jsp">????????????<i>??????????????????????????????????????????</i></a>
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
                                                                                            href="/jsp/login.jsp">??????</a>
                        </div>
                        <div class="active-icon" style="margin-bottom: 10px;" id="my"><a class="c1"
                                                                                         href="/my-account.html">????????????</a>
                        </div>
                        <li><a class="active-icon c1" href="#" id="cart">?????????</a>

                            <ul class="sub-icon1 list">
                                <h3><i>???????????????</i></h3>
                                <div class="shopping_cart" style="width: 320px;">
                                    <div class="cart_box row" id="ShopCartContent">

                                    </div>
                                </div>
                                <div class="total">
                                    <div class="total_left">?????? :</div>
                                    <div class="total_right">???<span id="TotalPrice">0.00</span></div>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="login_buttons">
                                    <div class="login_button"><a href="#" onclick="submitShopCart()">&nbsp;&nbsp;???&nbsp;&nbsp;???&nbsp;&nbsp;</a>
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
<!-- about -->
<div class="products-top" id="titole" style="background-color:white;padding-bottom: 80px;padding-top: 80px">
    <!-- container -->
    <div class="container">
        <div class="row" style="text-align: center">
            <div class="products-top-grids wow fadeInLeft animated" data-wow-delay="0.4s"
                 style="visibility: visible; -webkit-animation-delay: 0.4s;margin-top: 0">
                <a href="javascript:void(0)" onclick="selectProduct(5)">
                    <div class="col-sm-2 "><img src="images/P-mac.png"/><br>
                        <p>Mac</p></div>
                </a>
                <a href="javascript:void(0)" onclick="selectProduct(4)">
                    <div class="col-sm-2 "><img src="images/P-iphone.png"/><br>
                        <p>iPhone</p></div>
                </a>
                <a href="javascript:void(0)" onclick="selectProduct(3)">
                    <div class="col-sm-2 "><img src="images/P-ipad.png"/><br>
                        <p>iPad</p></div>
                </a>
                <a href="javascript:void(0)" onclick="selectProduct(2)">
                    <div class="col-sm-2 "><img src="images/P-watch.png"/><br>
                        <p>Apple Watch</p></div>
                </a>
                <a href="javascript:void(0)" onclick="selectProduct(1)">
                    <div class="col-sm-2 "><img src="images/P-airpods.png"/><br>
                        <p>AirPods</p></div>
                </a>
                <a href="javascript:void(0)" onclick="">
                    <div class="col-sm-2 "><img src="images/P-homepod-mini.png"/><br>
                        <p>HomePod mini</p></div>
                </a>
            </div>
        </div>
    </div>
</div>

<hr style="height: 2px;margin: 0px;border:0px;padding: 0px"/>
<div class="about-top" style="background-color: white">
    <!-- container -->
    <div class="container" style="text-align: center">
        <div class="col-md-5 banner-bottom-right wow fadeInRight animated animated" data-wow-delay="0.5s"
             style="visibility: visible; -webkit-animation-delay: 0.5s;width: 100%">
            <div>
                <p style="font-size: 50px ;font-weight: bold;letter-spacing: 7px;font-family: ??????;padding-bottom: 35px">
                    ????????????<span id="Pname">??????</span>?????????</p>
                <div class="row" id="content">

                </div>
            </div>
        </div>
    </div>
</div>
<hr style="height: 2px;margin: 0px;border:0px;padding: 0px"/>
<div class="products-bottom" style="background-color: white">
    <!-- container -->
    <div class="container" id="im">
        <h3 class="wow fadeInRight animated" data-wow-delay="0.4s"
            style="visibility: visible; -webkit-animation-delay: 0.4s;">????????????</h3>
        <div class="products-bottom-grids">
            <div class="gallery-grids">
                <div class="gallery-grid wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/6-.jpg" data-fancybox-group="gallery"><img src="images/P-1.png"
                                                                                                class="img-style row6"
                                                                                                alt=""><span> </span></a>
                </div>
                <div class="gallery-grid1 wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/8-.jpg" data-fancybox-group="gallery"><img src="images/P-3.jpg"
                                                                                                class="img-style row6"
                                                                                                alt=""><span> </span></a>
                </div>
                <div class="gallery-grid wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/5-.jpg" data-fancybox-group="gallery"><img src="images/P-3.png"
                                                                                                class="img-style row6"
                                                                                                alt=""><span> </span></a>
                </div>
                <div class="gallery-grid1 wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/9-.jpg" data-fancybox-group="gallery"><img src="images/P-4.png"
                                                                                                class="img-style row6"
                                                                                                alt=""><span> </span></a>
                </div>
                <div class="gallery-grid wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/10-.jpg" data-fancybox-group="gallery"><img src="images/P-5.png"
                                                                                                 class="img-style row6"
                                                                                                 alt=""><span> </span></a>
                </div>
                <div class="clearfix"></div>
            </div>
            <div class="gallery-grids">
                <div class="gallery-grid wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/P-6.jpg" data-fancybox-group="gallery"><img src="images/P-7.png"
                                                                                                 class="img-style row6"
                                                                                                 alt=""><span> </span></a>
                </div>
                <div class="gallery-grid wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/5-.jpg" data-fancybox-group="gallery"><img src="images/P-6.png"
                                                                                                class="img-style row6"
                                                                                                alt=""><span> </span></a>
                </div>
                <div class="gallery-grid1 wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/8-.jpg" data-fancybox-group="gallery"><img src="images/P-8.png"
                                                                                                class="img-style row6"
                                                                                                alt=""><span> </span></a>
                </div>
                <div class="gallery-grid wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/10-.jpg" data-fancybox-group="gallery"><img src="images/P-9.png"
                                                                                                 class="img-style row6"
                                                                                                 alt=""><span> </span></a>
                </div>
                <div class="gallery-grid1 wow bounceIn animated" data-wow-delay="0.4s"
                     style="visibility: visible; -webkit-animation-delay: 0.4s;">
                    <a class="fancybox" href="images/9-.jpg" data-fancybox-group="gallery"><img src="images/P-10.png"
                                                                                                class="img-style row6"
                                                                                                alt=""><span> </span></a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <!-- //container -->
</div>
<!-- footer -->
<div class="footer">
    <!-- container -->
    <div class="container">
        <div class="col-md-6 footer-left  wow fadeInLeft animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <ul>
                <li><a href="index.html">??????</a></li>
                <li><a href="about.html">????????????</a></li>
                <li><a href="products.html">????????????</a></li>
                <li><a href="404.html">Apple ??????</a></li>
                <li><a href="mail.html">????????????</a></li>
            </ul>
            <form>
                <input type="text" placeholder="??????" required="">
                <input type="submit" value="??????">
            </form>
        </div>
        <div class="col-md-3 footer-middle wow bounceIn animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <h3>??????</h3>
            <div class="address">
                <p>???????????????????????????,
                    <span>????????????????????????????????????2???6???</span>
                </p>
            </div>
            <div class="phone">
                <p>1234567890</p>
            </div>
        </div>
        <div class="col-md-3 footer-right  wow fadeInRight animated" data-wow-delay="0.4s"
             style="visibility: visible; -webkit-animation-delay: 0.4s;">
            <img src="images/??????.jpg" style="height: 200px; width: 300px">
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
            <p>SUN &copy; 2022.10.17 21???24</p>
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
        let menber = $("#userinfomenber").text();
        let umoney=$("#userinfoaccount").text();
            if (umoney >= (money * 0.8) && menber == 1) {
                mo = umoney - (money * 0.8);
                iF = true;
                alert("??????????????? ?????????????????????????????????");
            }
        else if (umoney >= money && menber == 0) {
            mo = umoney - money;
            alert("????????????!");
            iF = true;
        } else {
            alert("??????????????????????????????");
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

    function initialization(){
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
            $("userinfoaccount").text(person.account);
            $("userinfomenber").text(person.menber);
        });

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

                        var addPic = $("<img/>").attr("src", "images/??????.png").addClass("addpic");

                        var shopId = this.shopid;
                        var num = this.gnum;

                        var a2 = $("<a></a>").attr("href", "javascript:void(0)").append(addPic).bind("click", {
                            SCID: shopId,
                            nums: num
                        }, delShopCart);
                        var span1 = $("<span></span>").text(this.gnum).css("text-align", "center");
                        var delPic = $("<img/>").attr("src", "images/??????.png").addClass("delpic");

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
                        var span3 = $("<span></span>").addClass("actual").css("float", "right").text("???").append(span2);

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


    function selectProduct(index) {

        var Uid = $("#userinfoid").text()
        $.post("/selectProduct",
            {
                typeID: index,
                service: "getGoodsOVList"
            },
            function (data, status) {
                $("#content").text("");
                var AP = JSON.parse(data);
                $(AP).each(function () {
                    var route = this.gpic;
                    var picture = $("<img/>").attr("src", route.substring(9));

                    if ((this.gname).includes("iPhone") || (this.gname).includes("iPad")) {
                        picture.css("height", "205px")
                        picture.css("width", "auto")
                    }
                    if ((this.gname).includes("AirPods")) {
                        picture.css("height", "130px")
                        picture.css("width", "auto")
                    }
                    var bold = $("<b></b>").text(this.gname);
                    var name = $("<h3></h3>").append(bold);
                    var univalence = $("<p></p>").text("RMB " + this.price + " ???");
                    var but = $("<button></button>").text("??????").bind("click", {
                        GoodsID: this.id,
                        UserID: Uid
                    }, addShopCart);
                    ;
                    var Wrap = $("<br>");
                    var catenate = $("<a></a>").text("??????????????? >");
                    var firework = $("<div></div>").addClass("col-sm-3 team-grid wow bounceIn animated").append(picture, name, univalence, but, Wrap, catenate);
                    $("#content").append(firework);
                });
            });
    }
</script>
</body>
</html>
