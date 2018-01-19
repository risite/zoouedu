<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ include file="/base.jsp"%>

<!DOCTYPE html>
<html>
<head>
    <!-- 公共的js，css -->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
<meta name="renderer" content="webkit"/>
    <!-- 开发标准页面时引用此文件，提供了基本的js及css -->
    <!--[if lt IE 8]>
    <script src="//static.koocdn.com/lib/json-js/json2.js"></script>
    <![endif]-->
    <!--[if lt IE 9]>
    <script src="//static.koocdn.com/lib/es5-shim/es5-shim.js"></script>
    <![endif]-->
    <script src="//static.koocdn.com/framework/js/global.js"></script>
    <script type="text/javascript">
		$(function(){
		     //获取浏览器宽度
		     var _width = $(window).width(); 
		     if(_width < 700){
				$(".banner-info").css("right","-70px").css("left","auto");
				$(".img_size").css("opacity","0.3");
		     }
		});
      seajs.config({
          base: '//images.koolearn.com/shark/',
          importBase: '//images.koolearn.com/shark/',
          comboExcludes: function(uri) {
              return true
          }
      });
    </script>
    <!-- 公共部分结束 -->
    <title>客户端下载</title>
    <link rel="stylesheet" href="//images.koolearn.com/shark/project/zt/2017/0720app/css/style.css?e616d4" />
</head>
<body>


<script>
    var customData = {
        iphone:{
            downloadPath:"https://itunes.apple.com/cn/app/xin-dong-fang-zai-xian-wang/id731338442",
            publishTime:"2017-10-11",
            versionName:"v3.0.4",
            disable:false   
        },
        ipad:{
            downloadPath:"https://itunes.apple.com/us/app/%E6%96%B0%E4%B8%9C%E6%96%B9%E5%9C%A8%E7%BA%BF-hd-%E7%BD%91%E7%BB%9C%E8%AF%BE%E5%A0%82-%E4%BA%92%E5%8A%A8%E5%AD%A6%E4%B9%A0/id899480738?l=zh&ls=1&mt=8",
            publishTime:"2017-09-09",
            versionName:"v2.5.8",
            disable:false   
        }
    }
</script>
<div class="banner jq-banner">
	<ul class="banner-bd">
		<li class="banner-android" style="display: block;">
			<p class="banner-pic">
				<c:forEach var="image" items="${websiteImagesList}" varStatus="status">
					<c:if test="${image.seriesNumber == 0}">
						<img class="img_size" src="<%=staticImage%>${image.imagesUrl}" alt="${image.title}">
					</c:if>
				</c:forEach></p>
			<div class="banner-info jq-dom-android">
				<p class="g-title">Android客户端<span></span></p>
				<div class="g-list">
					<p class="ewm"><img src="/apps/android/down_android.png" alt=""></p>
					<p class="txt">离线看视频<br/>倍速学习<br/>听课进度同步</p>
					<p class="btn">
						<a href="/apps/pconline1502343316623.apk">立即下载</a>
					</p>
				</div>
			</div>
		</li>
		<li class="banner-iphone">
			<p class="banner-pic">
				<c:forEach var="image" items="${websiteImagesList}" varStatus="status">
					<c:if test="${image.seriesNumber == 1}">
						<img class="img_size" src="<%=staticImage%>${image.imagesUrl}" alt="${image.title}">
                   	</c:if>
				</c:forEach></p>
			<div class="banner-info jq-dom-iphone">
				<p class="g-title">iPhone客户端<span></span></p>
				<div class="g-list">
					<p class="txt">离线看视频<br/>倍速学习<br/>听课进度同步</p>
					<p class="btn">
						<a href="/download/download_ios">安装说明</a>
					</p>
				</div>
			</div>
		</li>
		<li class="banner-pc">
			<p class="banner-pic">
				<c:forEach var="image" items="${websiteImagesList}" varStatus="status">
					<c:if test="${image.seriesNumber == 2}">
						<img class="img_size" src="<%=staticImage%>${image.imagesUrl}" alt="${image.title}">
					</c:if>
				</c:forEach></p>
			<div class="banner-info">
				<p class="g-title">桌面版<span></span></p>
				<div class="g-list">
					<p class="txt">离线看视频<br/>倍速学习<br/>听课进度同步</p>
					<p class="btn">
						<a href="/apps/RPDesktop_3_8_0_68503.exe" >Win版下载</a>
						<a href="/apps/RPDMac_3_8_0_68330.dmg">Mac版下载</a>
					</p>
				</div>
			</div>
		</li>
	</ul>
	<div class="banner-hd"></div>
	<a href="javascript:;" class="banner-btn prev">prev</a>
	<a href="javascript:;" class="banner-btn next">next</a>
</div>

<div class="">
	<div class="container">
				<article class="i-teacher-list">
		<ul class="of">
			<li class=""><div style="margin:0px 0px 0px 30px">
				<p class="edition-title" style="font-size:20px">安卓版</p>
				<p class="edition-pic"><img src="//images.koolearn.com/shark/project/zt/2017/0720app/i/icon-2.jpg?f926a0" alt=""></p>
				<ul class="edition-list" style="margin-left:0;padding-top:0">
					<li class="col-1 jq-dom-android">
						<p class="name">安卓版 v3.8.0</p>
						<p class="date">2017-09-13</p>
					</li>
					<li class="col-2 jq-dom-android">
						<div class="btn">
							<a href="/apps/pconline1502343316623.apk" style="width:70px;margin-right:5px;float:right">下载</a>
						</div>
					</li>
					<li class="col-2 jq-dom-android">
						<div class="btn">
							<a href="/download/download_android" style="width:70px;margin-left:5px;float:left;">安装说明</a>
						</div>
					</li>
					
				</ul></div>
			</li>
			<li class="" ><div style="margin:0px 0px 0px 30px">
				<p class="edition-title" style="font-size:20px">IOS版</p>
				<p class="edition-pic"><img src="//images.koolearn.com/shark/project/zt/2017/0720app/i/icon-2.jpg?f926a0" alt=""></p>
				<ul class="edition-list" style="margin-left:0;padding-top:0">
					
					<li class="col-1 jq-dom-iphone">
						<p class="name">iOS版 v3.8.0</p>
						<p class="date">2017-09-07</p>
						<div class="btn">
							<a href="/download/download_ios">安装说明</a>
						</div>
					</li>
					<p class="clear"></p>
				</ul></div>
			</li>
			<li class=""><div style="margin:0px 0px 0px 30px">
			<p class="edition-title" style="font-size:20px">Windows版</p>
				<p class="edition-pic"><img src="//images.koolearn.com/shark/project/zt/2017/0720app/i/icon-1.jpg?cf2489" alt=""></p>
				<ul class="edition-list" style="margin-left:0;padding-top:0">
					<li class="col-1 jq-dom-win">
						<p class="name">Win版 v3.8.0<span></span></p>
						<p class="date">2017-11-07</p>
						<p class="btn">
							<a href="/apps/RPDesktop_3_8_0_68503.exe" >下载</a>
						</p>
					</li>
					<p class="clear"></p>
				</ul>
				<p class="clear"></p></div>
			</li>
			<li class=" " ><div style="margin:0px 0px 0px 30px">
				<p class="edition-title" style="font-size:20px">Mac版</p>
				<p class="edition-pic"><img src="//images.koolearn.com/shark/project/zt/2017/0720app/i/icon-1.jpg?cf2489" alt=""></p>
				<ul class="edition-list" style="margin-left:0;padding-top:0">
					<li class="col-1 jq-dom-mac">
						<p class="name">Mac版 
							v3.8.0<span></span>
						</p>
						<p class="date">2017-10-11</p>
						<p class="btn">
							<a href="/apps/RPDMac_3_8_0_68330.dmg" >下载</a>
						</p>
					</li>
					<p class="clear"></p>
				</ul>
				<p class="clear"></p></div>
			</li>
		</ul></article>
	</div>
</div>
<style>
/* 页尾样式 */
#ft{margin-top:60px;background:#f4f4f4;font-size:12px;padding:0px 0;}
</style>
<div id="ft">
</div>
<script>
    seajs.use('project/zt/2017/0720app/js/page.js',function(exports){
        $(function(){
            exports({
                url:'//appstore.koolearn.com/app/feature/latest_version',
                obj:customData
            });
        })
    })
</script>
</body>
</html>