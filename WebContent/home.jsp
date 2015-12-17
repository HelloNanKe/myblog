<%@ page language="java" contentType="text/html; utf-8"
	pageEncoding="utf-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>个人博客</title>

<link href="css/index.css" rel="stylesheet">
<link href="css/user_info.css" rel="stylesheet">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
<link href="css/table_2.css" rel="stylesheet" />
<script src="js/jquery-2.1.4.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="css/font-awesome.min.css" />
<link rel="stylesheet" href="css/table.css" />
<title></title>
<script type="text/javascript">
	window.jQuery
			|| document.write("<script src='js/jquery-2.1.4.min.js'>"
					+ "<" + "/script>");
</script>
<script type="text/javascript">
	if ("ontouchend" in document)
		document.write("<script src='js/jquery.mobile.custom.min.js'>"
				+ "<" + "/script>");
</script>
<script src="js/jquery.dataTables.min.js"></script>
<script src="js/jquery.dataTables.bootstrap.js"></script>
<script type="text/javascript">
	$(function() {
		var len = $('tr').length;
		for (var i = 1; i < len; i++) {
			$('tr:eq(' + i + ') td:eq(1)').text(i);
		}
	});
	jQuery(function($) {
		var oTable1 = $('#sample-table-2').dataTable({
			"aoColumns" : [ {
				"bSortable" : false
			}, null, null, null, null, null, {
				"bSortable" : false
			} ]
		});
		$('table th input:checkbox').on(
				'click',
				function() {
					var that = this;
					$(this).closest('table').find(
							'tr > td:first-child input:checkbox').each(
							function() {
								this.checked = that.checked;
								$(this).closest('tr').toggleClass('selected');
							});
				});
		$('[data-rel="tooltip"]').tooltip({
			placement : tooltip_placement
		});

		function tooltip_placement(context, source) {
			var $source = $(source);
			var $parent = $source.closest('table')
			var off1 = $parent.offset();
			var w1 = $parent.width();
			var off2 = $source.offset();
			var w2 = $source.width();
			if (parseInt(off2.left) < parseInt(off1.left) + parseInt(w1 / 2))
				return 'right';
			return 'left';
		}
	})
</script>
<!--[if lt IE 9]>
<script src="js/html5.js"></script>
<![endif]-->
</head>
<body>
	<header>
	<div id="logo">
		<a href="/"></a>
	</div>
	<nav class="topnav" id="topnav"> <a href="getAllEssay"><span>首页</span><span
		class="en">Honme</span></a> <a href="about.jsp"><span>关于我</span><span
		class="en">About</span></a> </a> <a href="saylist.html"><span>个人日记</span><span
		class="en">Diary</span></a> <a href="seolist.html"><span>SEO技术</span><span
		class="en">Seo</span></a> <a href="weblist.html"><span>WEB前端</span><span
		class="en">Web</span></a> <a href="writeEssay.jsp"><span>随笔</span><span
		class="en">Essay</span></a> </nav> </header>
	<!--end header-->
	<div class="banner">
		<section class="box">
		<ul class="texts">
			<p class="p1">纪念我们:</p>
			<p class="p2">终将逝去的青春</p>
			<p class="p3">
				By:
				<s:property value='#session.user.userName' />
			</p>
		</ul>
		</section>
	</div>
	<!--end banner-->
	<article>
	<h2 class="title_tj">
		<p>
			博主<span>推荐</span>
		</p>
	</h2>



	<div class="bloglist left">
		<caption>
			<label style="color: #ac2925">${msg}</label>
		</caption>
		<s:iterator id="b" value="#session.blogList" status="u">

			<div class="wz">
				<h3>
					题目：
					<s:property value='#b.theme' />
				</h3>
				<p class="dateview">
					<span><s:property value='#b.date' /></span><span>作者：<s:property
							value='#session.user.userName' /></span><span> </span>
				</p>

				<ul>
					<s:property value='#b.content' escape="false" />
					<a title="阅读全文"
						href="seeDetails.action?blogId=<s:property value='#b.blogId'/>"
						target="_blank" class="readmore">阅读全文>></a>
					<a title="阅读全文"
						href="delEssay.action?blogId=<s:property value='#b.blogId'/>"
						class="readmore">删除</a>
				</ul>
				<div class="clear"></div>
			</div>
		</s:iterator>

	</div>


	<!--right--> <aside class="right">
	<div class="my">
		<h2>
			关于<span>博主</span>
		</h2>
		<img src="<s:property value="#session.user.photo"/>" height="200px"
			width="200px" alt="博主">
		<ul>
			<li>博主：<s:property value="#session.user.userName" /></li>
			<li>职业:<s:property value="#session.user.career" /></li>
			<li>简介：<s:property value="#session.user.aboutMe" /></li>
			<li></li>
		</ul>
	</div>
	<div class="bdsharebuttonbox">
		<a href="#" class="bds_more" data-cmd="more"></a><a href="#"
			class="bds_qzone" data-cmd="qzone" title="分享到QQ空间"></a><a href="#"
			class="bds_tsina" data-cmd="tsina" title="分享到新浪微博"></a><a href="#"
			class="bds_tqq" data-cmd="tqq" title="分享到腾讯微博"></a><a href="#"
			class="bds_renren" data-cmd="renren" title="分享到人人网"></a><a href="#"
			class="bds_weixin" data-cmd="weixin" title="分享到微信"></a>
	</div></article>
	<footer> </footer>
	<script src="js/nav.js"></script>
	<!--百度分享-->
	<script>
		window._bd_share_config = {
			"common" : {
				"bdSnsKey" : {},
				"bdText" : "",
				"bdMini" : "2",
				"bdMiniList" : false,
				"bdPic" : "",
				"bdStyle" : "1",
				"bdSize" : "32"
			},
			"share" : {},
			"image" : {
				"viewList" : [ "qzone", "tsina", "tqq", "renren", "weixin" ],
				"viewText" : "分享到：",
				"viewSize" : "16"
			},
			"selectShare" : {
				"bdContainerClass" : null,
				"bdSelectMiniList" : [ "qzone", "tsina", "tqq", "renren",
						"weixin" ]
			}
		};
		with (document)
			0[(getElementsByTagName('head')[0] || body)
					.appendChild(createElement('script')).src = 'http://bdimg.share.baidu.com/static/api/js/share.js?v=89860593.js?cdnversion='
					+ ~(-new Date() / 36e5)];
	</script>
</body>
</html>
