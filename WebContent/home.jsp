<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>home画面</title>

<style type="text/css">
	.logo{
    	height: 100px;
    	margin:0px 0px 0px 0px;
    	padding:0px 0px 0px 0px;
	}

	.header_menu{
    	background-color: black;
    	color: white;
    	height: 60px;
    	width:100%;
	}
	header li{
    	float:left;
	    line-height: 60px;
	    list-style: none;
	    padding-right: 30px;
	    font-size: 24px;
	}

	li a{
			text-decoration: none;
			color: white;

	}

	.top{
	    padding-right: 60px;
	}

	.sonota{
	    padding-left: 40px
	}

	.main{
	    clear: both;
	}

	h1{
	    border-left: solid 5px black;
	    border-bottom: solid 2px black;
	    padding-left: 5px;
	}

	.left{
	    float:left;
	    width:70%;
	    box-sizing: border-box;
	}

	.p1,.p2,.p3{
	    margin-bottom:5px;
	    margin-top:5px;
	}
	.p2,.p3{
	    text-indent:1em;
	}
	.p3{
	    margin-top: 1em;
	}

	.bookstore{
	    width:100%;
	    height:80%;
	}


	.gray_box{
	    width:100%;
	    background-color: lightgray;
	    text-align: center;
	    margin-bottom: 15px;
	}

	.gray_box img{
	    width: 200px;
	    padding:20px 7px 0px 7px;
	}

	.gray_box .gray_box2{
	    display:inline-block;
	}

	.gray_box2 p{
	        margin-top: 0px;
	        font-size: 20px;
	}

	.right{
	    float:left;
	    width:30%;
	    box-sizing: border-box;
	    padding-bottom: 779px;
	}

	.right_midashi{
	    border-bottom: 2px dotted gray;
	    font-size: 30px;
	    padding-top: 15px;
	}

	.right_list{
	    padding-left: 30px;
			font-size: 20px;
	}

	.right_list,li{
	    list-style: none;
	    font-size; 20px;
	}



	footer{
	    clear:both;
	    background-color: black;
	    color:white;
	    text-align: center;
	    height:50px;
	    line-height: 50px;
	}
</style>

<!-- bxsliderのプラグイン-->
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bxslider@4.2.17/dist/jquery.bxslider.min.js"></script>

    <script>
      $(document).ready(function(){
        $('.slide_show').bxSlider({
					auto: true,
					speed: 2000,
					controls: false,
					mode: 'horizontal'

				});
      });
    </script>


</head>

<body>


<header>
    <img class="logo" src="C:\Program Files (x86)\Brackets\workspace\【演習課題】Registration\diblog画像\diblog_logo.jpg">
    <div class="header_menu">
    <ul>
        <li class="top">トップ</li>
        <li>プロフィール</li>
        <li>D.I.Blogについて</li>
		<li><a href='<s:url action="RegistAction" />'>アカウント登録</a></li>
        <li>問い合わせ</li>
        <li class="sonota">その他</li>
    </ul>
    </div>
</header>

<main>
    <div class="left">
    <h1> プログラミングに役立つ書籍</h1>
        <div class="column1">
            <p class="p1">2017年1月15日</p>

					<!-- bxsliderのスライド部分-->
							<div class="slide_show">
      					<div><img src="image/jQuery_image1.jpg"></div>
      					<div><img src="image/jQuery_image2.jpg"></div>
      					<div><img src="image/jQuery_image3.jpg"></div>
      					<div><img src="image/jQuery_image4.jpg"></div>
      					<div><img src="image/jQuery_image5.jpg"></div>
    					</div>

            <p class="p2">D.I.BlogはD.I.Worksが提供する演習課題です。</p>
        </div>

        <div class="column2">
           <p class="p3">記事中身</p>
            <div class="gray_box">
                <div class="gray_box2">
                    <img src="C:\Program Files (x86)\Brackets\workspace\【演習課題】Registration\diblog画像\pic1.jpg">
                    <p>ドメイン取得方法</p>
                </div>
                <div class="gray_box2">
                    <img src="C:\Program Files (x86)\Brackets\workspace\【演習課題】Registration\diblog画像\pic2.jpg">
                    <p>快適な職場環境</p>
                </div>
                <div class="gray_box2">
                    <img src="C:\Program Files (x86)\Brackets\workspace\【演習課題】Registration\diblog画像\pic3.jpg">
                    <p>Linuxの基礎</p>
                </div>
                <div class="gray_box2">
                    <img src="C:\Program Files (x86)\Brackets\workspace\【演習課題】Registration\diblog画像\pic4.jpg">
                    <p>マーケティング入門</p>
                </div>
                <div class="gray_box2">
                    <img src="C:\Program Files (x86)\Brackets\workspace\【演習課題】Registration\diblog画像\pic5.jpg">
                    <p>アクティブラーニング</p>
                </div>
                <div class="gray_box2">
                    <img src="C:\Program Files (x86)\Brackets\workspace\【演習課題】Registration\diblog画像\pic6.jpg">
                    <p>CSSの効率的な勉強方法</p>
                </div>
                <div class="gray_box2">
                    <img src="C:\Program Files (x86)\Brackets\workspace\【演習課題】Registration\diblog画像\pic7.jpg">
                    <p>リーダブルコードとは</p>
                </div>
                <div class="gray_box2">
                    <img src="C:\Program Files (x86)\Brackets\workspace\【演習課題】Registration\diblog画像\pic8.jpg">
                    <p>HTML5の可能性</p>
                </div>
            </div>
        </div>
    </div>

    <div class="right">

        <br>
        <h2 class="right_midashi">人気の記事</h2>
            <ul class="right_list">
                <li>PHPオススメ本</li>
                <li>PHP　MyAdminの使い方</li>
                <li>今人気のエディタTops</li>
                <li>HTMLの基礎</li>
            </ul>
        <h2 class="right_midashi">オススメリンク</h2>
            <ul class="right_list">
                <li>ﾃﾞｨｰｱｲﾜｰｸｽ株式会社</li>
                <li>XAMPPのダウンロード</li>
                <li>Eclipseのダウンロード</li>
                <li>Bracketsのダウンロード</li>
            </ul>

        <h2 class="right_midashi">カテゴリ</h2>
            <ul class="right_list">
                <li>HTML</li>
                <li>PHP</li>
                <li>MySQL</li>
                <li>JavaScript</li>
            </ul>
    </div>
</main>

    <footer>
        <div>Copyright D.I.Works| D.I.blog is the one which provides A to Z about programming
        </div>
    </footer>


</body>
</html>