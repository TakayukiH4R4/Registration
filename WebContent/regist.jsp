<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登録画面</title>
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


	footer{
	    clear:both;
	    background-color: black;
	    color:white;
	    text-align: center;
	    height:50px;
	    line-height: 50px;
	}
</style>
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
<h1>アカウント登録画面</h1>


</main>

    <footer>
        <div>Copyright D.I.Works| D.I.blog is the one which provides A to Z about programming
        </div>
    </footer>


</body>
</html>