<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title></title>
<link
	href="http://libs.useso.com/js/bootstrap/3.2.0/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="http://libs.useso.com/js/font-awesome/4.0.3/css/font-awesome.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/default.css">
<link href="css/editor.css" type="text/css" rel="stylesheet" />

<title>留言板―阿屎博客</title>
<meta name="keywords" content="" />
<meta name="description" content="" />
<link href="css/index.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<script src="http://libs.useso.com/js/jquery/2.1.0/jquery.min.js"></script>
<script
	src="http://libs.useso.com/js/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="js/editor.js"></script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->

<script>
	
</script>
</head>
<body>
	<header>
	<div id="logo">
		<a href="#"></a>
	</div>
	<nav class="topnav" id="topnav"> <a href="getAllEssay"><span>首页</span><span
		class="en">Home</span></a> <a href="about.jsp"><span>关于我</span><span
		class="en">About</span></a> <a href="getAllPhoto"><span>照片墙</span><span
		class="en">Photo</span></a> <a href="writeEssay.jsp"><span>随笔</span><span
		class="en">Essay</span></a> </nav></header>
	<article class="blogs">
	<h1 class="t_nav">
		<span>既然来了，那么就留下你的足迹吧！</span><a href="#" class="n1">网站首页</a><a
			href="#" class="n2">随笔</a>
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
						<td>
							<div class="htmleaf-container">
								<div class="container-fluid">
									<div class="row">
										<div class="container">
											<div class="row">
												<div class="col-lg-7 nopadding">
													<input name="blog.theme" type="text" placeholder="随笔名字"
														class="btn btn-default">
												</div>
											</div>
											<div class="row">
												<div class="col-lg-7 nopadding">
													<textarea id="txtEditor" name="blog.content"> </textarea>
												</div>
											</div>
											<div class="row">
												<div class="col-lg-7 nopadding">
													<input class="btn btn-info" type="submit" value="Submit" />
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</td>
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

	<script src="js/nav.js"></script>
	<!-- Baidu Button BEGIN -->

	<script type="text/javascript" id="bdshare_js"
		data="type=tools&amp;uid=6574585"></script>
	<script type="text/javascript" id="bdshell_js"></script>
	<script type="text/javascript">
		document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion="
				+ Math.ceil(new Date() / 3600000)
	</script>
	<script type="text/javascript">
		$(document).ready(function() {

			$("#txtEditor").Editor();

		});
		alert(txtEditor.value);
	</script>
	<!-- Baidu Button END -->
</body>
</html>