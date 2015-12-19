<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<title>web前端技术―段亮博客</title>
<meta name="keywords" content="个人博客,段亮个人博客," />
<meta name="description" content="" />
<link href="css/index.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<link rel="stylesheet" href="css/index2.css" />
<link rel="stylesheet" href="css/style2.css" />
<script type="text/javascript" src="js/jquery1.42.min.js"></script>
<script type="text/javascript" src="js/jquery.SuperSlide.2.1.1.js"></script>
<script type="text/javascript" src="js/common.js"></script>
<script type="text/javascript" src="js/waterfall.js"></script>
<link
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/default.css">
<link href="css/fileinput.css" media="all" rel="stylesheet"
	type="text/css" />
<script src="http://libs.useso.com/js/jquery/2.1.1/jquery.min.js"></script>
<script src="js/fileinput.js" type="text/javascript"></script>
<script src="js/fileinput_locale_zh.js" type="text/javascript"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"
	type="text/javascript"></script>
<script>
	$("#file-0").fileinput({
		'allowedFileExtensions' : [ 'jpg', 'png', 'gif' ],
	});
</script>
<!--[if lt IE 9]>
<script src="js/modernizr.js"></script>
<![endif]-->
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
		class="en">Essay</span></a> </nav> </header>
	<article class="blogs">
	<h1 class="t_nav">
		<span>关于自己的回忆</span><a href="#" class="n1">网站首页</a><a
			href="#" class="n2">照片墙</a>
	</h1>
	<div>
		<div class="xc_content">
			<div>
				<form action="photoUpload" enctype="multipart/form-data"
					method="post">
					<caption>
						<label style="color: #ac2925">${msg}</label>
					</caption>
					<input id="file-0a" class="file" type="file" multiple
						data-min-file-count="1" name="Filedata"> <br>
					<button type="submit" class="btn btn-primary">Submit</button>
					<button type="reset" class="btn btn-default">Reset</button>
				</form>
			</div>

			<div class="con-bg">
				<div class="w960 mt_10">
					<div class="w650">
						<ul class="tips" id="wf-main" style="display: none">
							<s:iterator id="lp" value="#session.listPhoto">
								<li class="wf-cld"><img
									src="<s:property value='#lp.photo'/>" width="200" height="178"
									alt="" rel="lazy" /></li>
							</s:iterator>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/nav.js"></script> <!-- Baidu Button BEGIN --> <script
		type="text/javascript" id="bdshare_js"
		data="type=tools&amp;uid=6574585"></script> <script
		type="text/javascript" id="bdshell_js"></script> <script
		type="text/javascript">
			document.getElementById("bdshell_js").src = "http://bdimg.share.baidu.com/static/js/shell_v2.js?cdnversion="
					+ Math.ceil(new Date() / 3600000)
		</script> <!-- Baidu Button END --> <script type="text/javascript">
			jQuery(".lanmubox").slide({
				easing : "easeOutBounce",
				delayTime : 400
			});
		</script> <script type="text/javascript" src="js/nav2.js"></script> <script>
			var timer, m = 0, m1 = $("img[rel='lazy']").length;
			function fade() {
				$("img[rel='lazy']").each(
						function() {
							var $scroTop = $(this).offset();
							if ($scroTop.top <= $(window).scrollTop()
									+ $(window).height()) {
								$(this).hide();
								$(this).attr("src", $(this).attr("lazy_src"));
								$(this).attr("top", $scroTop.top);
								$(this).removeAttr("rel");
								$(this).removeAttr("lazy_src");
								$(this).fadeIn(600);
								var _left = $(this).parent().parent().attr(
										"_left");

								if (_left != undefined)

									$(this).parent().parent().animate({
										left : _left
									}, 400);
								m++;
							}
						});
				if (m < m1) {
					timer = window.setTimeout(fade, 300);
				} else {
					window.clearTimeout(timer);
				}
			}
			$(function() {
				$("#wf-main img[rel='lazy']").each(
						function(i) {
							var _left = $(this).parent().parent().css("left")
									.replace("px", "");
							$(this).parent().parent().attr("_left", _left);
							$(this).parent().parent().css("left", 0);

						});

				fade();
			});
			$(".loading").hide();
			$("#wf-main").show();
		</script>
</body>
</html>