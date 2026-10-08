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

	td{
		padding: 8px 0px;
	}

	table {
		margin:0 auto;
	}

	h1{
	    border-left: solid 5px black;
	    border-bottom: solid 2px black;
	    padding-left: 5px;
	}

	.error-message {
		color: red;
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
	<s:if test="errorMessage !=''">
		<s:property value="errorMessage" escape="false"/>
	</s:if>
	<table>
		<s:form action="RegistConfirmAction">
			<tr>
				<td>名前（姓）</td>
				<td><input type="text" name="familyName"  maxlength="10" pattern="^[ぁ-んー一-龠々]*$" value="<s:property value="familyName"/>" />
					<!-- 空欄だった場合のエラーメッセージ表示 -->
					<s:if test="errorFamilyName != ''">
						<span class="error-message"> <br><s:property value="errorFamilyName" escape="false"/> </span>
					</s:if>
				</td>
			</tr>
			<tr>
				<td>名前（名）</td>
				<td><input type="text" name="lastName"  maxlength="10" pattern="^[ぁ-んー一-龠々]*$" value="<s:property value="lastName"/>"/>
					<s:if test="errorLastName != ''">
						<span class="error-message"><br><s:property value="errorLastName" escape="false"/></span>
					</s:if>
				</td>
			</tr>

			<tr>
				<td>カナ（姓）</td>
				<td><input type="text" name="familyNameKana"  maxlength="10" pattern="^[ァ-ヶー]*$" value="<s:property value="familyNameKana"/>"/>
					<s:if test="errorFamilyNameKana != ''">
						<span class="error-message"><br><s:property value="errorFamilyNameKana" escape="false"/></span>
					</s:if>
				</td>
			</tr>

			<tr>
				<td>カナ（名）</td>
				<td><input type="text" name="lastNameKana"  maxlength="10" pattern="^[ァ-ヶー]*$" value="<s:property value="lastNameKana"/>"/>
					<s:if test="errorLastNameKana != ''">
						<span class="error-message"><br><s:property value="errorLastNameKana" escape="false"/></span>
					</s:if>
				</td>
			</tr>

			<tr>
				<td>メールアドレス</td>
				<td><input type="text" name="mail"  maxlength="100" pattern="^[a-zA-Z0-9-@.]*$" value="<s:property value="mail"/>"/>
					<s:if test="errorMail != ''">
						<span class="error-message"><br><s:property value="errorMail" escape="false"/></span>
					</s:if>
				</td>
			</tr>

			<tr>
				<td>パスワード</td>
				<td><input type="password" name="password" maxlength="10"  pattern="^[a-zA-Z0-9]*$" value=""/>
					<s:if test="errorPassword != ''">
						<span class="error-message"><br><s:property value="errorPassword" escape="false"/></span>
					</s:if>
				</td>
			</tr>

			<tr>
				<td>性別</td>
				<td>
					<input type="radio" name="gender" value="0"  checked>男
					<input type="radio" name="gender" value="1" >女
				</td>
			</tr>

			<tr>
				<td>郵便番号</td>
				<!-- 何も入力ない場合postalCodeが０で返されてしまう➡int型じゃなくてstring型にしてもいいのでは？ -->
				<td><input type="text" name="postalCode"  maxlength="7" pattern="^[0-9]*$" value="<s:property value="postalCode"/>"/>
					<s:if test="errorPostalCode != ''">
						<span class="error-message"><br><s:property value="errorPostalCode" escape="false"/></span>
					</s:if>
				</td>
			</tr>

			<tr>
				<td>住所（都道府県）</td>
				<td>
					<select name="prefecture">
					    <option value=""></option>
						<option value="北海道" <s:if test='prefecture == "北海道"'>selected</s:if>>北海道</option>
						<option value="青森県" <s:if test='prefecture == "青森県"'>selected</s:if>>青森県</option>
						<option value="岩手県" <s:if test='prefecture == "岩手県"'>selected</s:if>>岩手県</option>
						<option value="宮城県" <s:if test='prefecture == "宮城県"'>selected</s:if>>宮城県</option>
						<option value="秋田県" <s:if test='prefecture == "秋田県"'>selected</s:if>>秋田県</option>
						<option value="山形県" <s:if test='prefecture == "山形県"'>selected</s:if>>山形県</option>
						<option value="福島県" <s:if test='prefecture == "福島県"'>selected</s:if>>福島県</option>
						<option value="茨城県" <s:if test='prefecture == "茨城県"'>selected</s:if>>茨城県</option>
						<option value="栃木県" <s:if test='prefecture == "栃木県"'>selected</s:if>>栃木県</option>
						<option value="群馬県" <s:if test='prefecture == "群馬県"'>selected</s:if>>群馬県</option>
						<option value="埼玉県" <s:if test='prefecture == "埼玉県"'>selected</s:if>>埼玉県</option>
						<option value="千葉県" <s:if test='prefecture == "千葉県"'>selected</s:if>>千葉県</option>
						<option value="東京都" <s:if test='prefecture == "東京都"'>selected</s:if>>東京都</option>
						<option value="神奈川県" <s:if test='prefecture == "神奈川県"'>selected</s:if>>神奈川県</option>
						<option value="新潟県" <s:if test='prefecture == "新潟県"'>selected</s:if>>新潟県</option>
						<option value="富山県" <s:if test='prefecture == "富山県"'>selected</s:if>>富山県</option>
						<option value="石川県" <s:if test='prefecture == "石川県"'>selected</s:if>>石川県</option>
						<option value="福井県" <s:if test='prefecture == "福井県"'>selected</s:if>>福井県</option>
						<option value="山梨県" <s:if test='prefecture == "山梨県"'>selected</s:if>>山梨県</option>
						<option value="長野県" <s:if test='prefecture == "長野県"'>selected</s:if>>長野県</option>
						<option value="岐阜県" <s:if test='prefecture == "岐阜県"'>selected</s:if>>岐阜県</option>
						<option value="静岡県" <s:if test='prefecture == "静岡県"'>selected</s:if>>静岡県</option>
						<option value="愛知県" <s:if test='prefecture == "愛知県"'>selected</s:if>>愛知県</option>
						<option value="三重県" <s:if test='prefecture == "三重県"'>selected</s:if>>三重県</option>
						<option value="滋賀県" <s:if test='prefecture == "滋賀県"'>selected</s:if>>滋賀県</option>
						<option value="京都府" <s:if test='prefecture == "京都府"'>selected</s:if>>京都府</option>
						<option value="大阪府" <s:if test='prefecture == "大阪府"'>selected</s:if>>大阪府</option>
						<option value="兵庫県" <s:if test='prefecture == "兵庫県"'>selected</s:if>>兵庫県</option>
						<option value="奈良県" <s:if test='prefecture == "奈良県"'>selected</s:if>>奈良県</option>
						<option value="和歌山県" <s:if test='prefecture == "和歌山県"'>selected</s:if>>和歌山県</option>
						<option value="鳥取県" <s:if test='prefecture == "鳥取県"'>selected</s:if>>鳥取県</option>
						<option value="島根県" <s:if test='prefecture == "島根県"'>selected</s:if>>島根県</option>
						<option value="岡山県" <s:if test='prefecture == "岡山県"'>selected</s:if>>岡山県</option>
						<option value="広島県" <s:if test='prefecture == "広島県"'>selected</s:if>>広島県</option>
						<option value="山口県" <s:if test='prefecture == "山口県"'>selected</s:if>>山口県</option>
						<option value="徳島県" <s:if test='prefecture == "徳島県"'>selected</s:if>>徳島県</option>
						<option value="香川県" <s:if test='prefecture == "香川県"'>selected</s:if>>香川県</option>
						<option value="愛媛県" <s:if test='prefecture == "愛媛県"'>selected</s:if>>愛媛県</option>
						<option value="高知県" <s:if test='prefecture == "高知県"'>selected</s:if>>高知県</option>
						<option value="福岡県" <s:if test='prefecture == "福岡県"'>selected</s:if>>福岡県</option>
						<option value="佐賀県" <s:if test='prefecture == "佐賀県"'>selected</s:if>>佐賀県</option>
						<option value="長崎県" <s:if test='prefecture == "長崎県"'>selected</s:if>>長崎県</option>
						<option value="熊本県" <s:if test='prefecture == "熊本県"'>selected</s:if>>熊本県</option>
						<option value="大分県" <s:if test='prefecture == "大分県"'>selected</s:if>>大分県</option>
						<option value="宮崎県" <s:if test='prefecture == "宮崎県"'>selected</s:if>>宮崎県</option>
						<option value="鹿児島県" <s:if test='prefecture == "鹿児島県"'>selected</s:if>>鹿児島県</option>
						<option value="沖縄県" <s:if test='prefecture == "沖縄県"'>selected</s:if>>沖縄県</option>
					</select>
					<s:if test="errorPrefecture != ''">
						<span class="error-message"><br><s:property value="errorPrefecture" escape="false"/></span>
					</s:if>
				</td>
			</tr>

			<tr>
				<td>住所（市区町村）</td>
				<td><input type="text" name="address1"  maxlength="10"  pattern="^[ぁ-んー一-龠々ァ-ヶー0-9- ]*$" value="<s:property value="address1"/>"/>
					<s:if test="errorAddress1 != ''">
						<span class="error-message"><br><s:property value="errorAddress1" escape="false"/></span>
					</s:if>
				</td>
			</tr>

			<tr>
				<td>住所（番地）</td>
				<td><input type="text" name="address2"  maxlength="10" pattern="^[ぁ-んー一-龠々ァ-ヶー0-9- ]*$" value="<s:property value="address2"/>"/>
					<s:if test="errorAddress2 != ''">
						<span class="error-message"><br><s:property value="errorAddress2" escape="false"/></span>
					</s:if>
				</td>
			</tr>

			<tr>
				<td>アカウント権限</td>
				<td>
					<select name ="authority">
						<option value="0">一般</option>
						<option value="1">管理者</option>
					</select>
				</td>
			</tr>

			<s:submit value="確認する"/>
		</s:form>
	</table>
</main>

    <footer>
        <div>Copyright D.I.Works| D.I.blog is the one which provides A to Z about programming
        </div>
    </footer>


</body>
</html>