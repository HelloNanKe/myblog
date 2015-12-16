<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>关于我-段亮博客</title>
<meta name="keywords" content="个人博客,段亮个人博客,个人博客模板," />
<meta name="description" content="" />
<link href="css/index.css" rel="stylesheet">
<link href="css/ty.css" rel="stylesheet">
<script src="js/checkUploadePicture.js"></script>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body>
	<header>
	<div id="logo">
		<a href="/"></a>
	</div>
	<nav class="topnav" id="topnav"> <a href="home.jsp"><span>首页</span><span
		class="en">Home</span></a> <a href="about.jsp"><span>关于我</span><span
		class="en">About</span></a> <a href="saylist.html"><span>个人日记</span><span
		class="en">Diary</span></a> <a href="seolist.html"><span>SEO技术</span><span
		class="en">Seo</span></a> <a href="weblist.html"><span>WEB前端</span><span
		class="en">Web</span></a> <a href="writeEssay.jsp"><span>随笔</span><span
		class="en">Essay</span></a> </nav> </header>
	<article class="aboutcon">
	<h1 class="t_nav">
		<span>像"草根"一样，紧贴着地面，低调的存在，冬去春来，枯荣无恙。</span><a href="/" class="n1">网站首页</a><a
			href="/" class="n2">关于我</a>
	</h1>
	<div class="about left">
		<h2>About me</h2>
		<div id="me_text">
			<form action="modifyAbout" method="post" enctype="multipart/form-data">
				<table cellpadding="0" cellspacing="0">
					<caption>
						<label style="color: #ac2925">${msg}</label>
					</caption>

					<tr>
						<th width="80" height="55">用户名：</th>
						<td width="220"><input type="text" class="find-text"
							name="user.userName"
							value=<s:property value="#session.user.userName"/>></td>
						<th width="80">密码：</th>
						<td width="220"><input type="password" class="find-text"
							name="user.passwd"
							value=<s:property value="#session.user.passwd"/>></td>
					</tr>
					<tr>
						<th width="80" height="55">职业：</th>
						<td width="220"><input type="text" class="find-text"
							name="user.career"
							value=<s:property value="#session.user.career"/>></td>
						<th width="80">网名：</th>
						<td width="220"><input type="text" class="find-text"
							name="user.netName"
							value=<s:property value="#session.user.netName"/>></td>
					</tr>
					<tr>
						<th width="80" height="55">星座：</th>
						<td width="220"><input type="text" class="find-text"
							name="user.constellation"
							value=<s:property value="#session.user.constellation"/>></td>
						<th width="80" height="55">住址：</th>
						<td width="220"><input type="text" class="find-text"
							name="user.addr" value=<s:property value="#session.user.addr"/>></td>
					</tr>
					<tr>
						<th width="80" height="55">喜欢书籍：</th>
						<td width="220"><input type="text" class="find-text"
							name="user.book" value=<s:property value="#session.user.book"/>></td>
						<th width="80" height="55">喜欢音乐：</th>
						<td width="220"><input type="text" class="find-text"
							name="user.music" value=<s:property value="#session.user.music"/>></td>
					</tr>
					
					<tr>
						<th colspan="1" width="30" height="50">简介：</th>
						<td colspan="4"><div style="width:500px;height:200px">
								<textarea class="find-textarea" name="user.description" style="width:500px;height:180px"><s:property
										value="#session.user.description" /> </textarea>
							</div></td>
					</tr>
					<tr>
						<th colspan="1" width="30" height="50">关于我：</th>
						<td colspan="4"><div style="width:500px;height:200px"">
								<textarea class="find-textarea" name="user.aboutMe" style="width:500px;height:180px"><s:property
										value="#session.user.aboutMe" /> </textarea>
							</div></td>
					</tr>
					<tr>
						<th width="80" height="50">头像：</th>
						<td colspan="3"><img
							src="<s:property value="#session.user.photo"/>" height="150px"
							width="250px"><input type="file" name="uploadFile"
							onchange="fileChange(this)" / style="margin-bottom:20px;"></</td>
					</tr>
					<tr></tr>
					<tr></tr>
				</table>
				<button class="btn btn-info add-btn">修 改</button>
			</form>
		</div>

	</div>
	<aside class="right">
	<div class="about_c">
		<p>
			网名：<span><s:property value="#session.user.netName" /></span>
		</p>
		<p>
			姓名：<a href="wwww.duanliang920.com" target="_blank"><s:property
					value="#session.user.userName" /></a>
		</p>
		<p>
			星座：
			<s:property value="#session.user.constellation" />
		</p>
		<p>
			现居：
			<s:property value="#session.user.addr" />
		</p>
		<p>
			喜欢的书：
			<s:property value="#session.user.book" />
			..
		</p>
		<p>
			喜欢的音乐：
			<s:property value="#session.user.music" />
			..
		</p>
		<div class="about_qq">
			<span>联系博主：</span><a
				href="http://wpa.qq.com/msgrd?v=3&uin=786896996&site=qq&menu=yes"
				title="联系博主" target="_blank"><p></p></a>
			<div class="clear"></div>
		</div>
	</div>
	</aside> </article>
	<footer>
	<p>
		<span>Design By:<a href="www.duanliang920.com" target="_blank"><s:property
					value="#session.user.netName" /></a></span><span>网站地图</span><span><a
			href="/">网站统计</a></span>
	</p>
	</footer>
	<script src="js/nav.js"></script>
</body>
</html>