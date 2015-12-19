<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>留言板―阿屎博客</title>
<meta name="keywords" content="个人博客,段亮个人博客," />
<meta name="description" content="" />
<link href="css/index.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
<script src="tinymce/tinymce.min.js"></script>
<script>
	tinymce.init({
		selector : 'textarea'
	});
</script>
</head>
<body>
	<header>
	<div id="logo">
		<a href="/"></a>
	</div>
	<nav class="topnav" id="topnav"> <a href="home.jsp"><span>首页</span><span
		class="en">Honme</span></a> <a href="about.jsp"><span>关于我</span><span
		class="en">About</span></a> </a> <a href="saylist.html"><span>个人日记</span><span
		class="en">Diary</span></a> <a href="seolist.html"><span>SEO技术</span><span
		class="en">Photo</span></a> <a href="photoWall.jsp"><span>照片墙</span><span
		class="en">Photo</span></a> <a href="writeEssay.jsp"><span>随笔</span><span
		class="en">Essay</span></a> </nav> </header>
	<article class="blogs">
	<h1 class="t_nav">
		<span>既然来了，那么就留下你的足迹吧！</span><a href="/" class="n1">网站首页</a><a
			href="/" class="n2">随笔</a>
	</h1>
	<div class="bloglist left">
		<div id="gustbook">

			<form action="writeEssay" method="post">
				<table>
					<caption>
						<label style="color: #ac2925">${msg}</label>
					</caption>
					<thead></thead>
					<tbody>
						<tr>
							<td><input name="blog.theme" type="text" placeholder="随笔名字"
								class="btn btn-default"></td>
						</tr>
						<tr>
							<td></td>
						</tr>
						<tr>
							<td></td>
						</tr>
						<tr>
							<td style="position: relative; height: 489px; width: 1000px;"><textarea
									name="blog.content" style="height: 320px"></textarea></td>
						</tr>
						<tr>
							<td><input class="btn btn-info" type="submit" value="Submit"></td>
						</tr>
					</tbody>
				</table>
			</form>
		</div>
	</div>
	<!--right--> <aside class="right">
	<div id="bdshare" class="bdshare_t bds_tools_32 get-codes-bdshare">
		<a class="bds_tsina"></a><a class="bds_qzone"></a><a class="bds_tqq"></a><a
			class="bds_renren"></a><span class="bds_more"></span><a
			class="shareCount"></a>
	</div>


	</aside> </article>
	<footer>
	<p>
		<span>Design By:<a href="#" target="_blank">段亮</a></span><span>网站地图</span><span><a
			href="/">网站统计</a></span>
	</p>
	</footer>
	<script src="js/nav.js"></script>
	<!-- Baidu Button BEGIN -->

	<script type="text/javascript" id="bdshare_js"
		data="type=tools&amp;uid=6574585"></script>
	<script type="text/javascript" id="bdshell_js"></script>
	<script type="text/javascript">
		document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion="
				+ Math.ceil(new Date() / 3600000)
	</script>
	<!-- Baidu Button END -->
</body>
</html>