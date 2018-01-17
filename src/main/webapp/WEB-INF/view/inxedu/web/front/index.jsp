<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/base.jsp"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="//static.koocdn.com/framework/css/global.css">
<script src="//static.koocdn.com/framework/js/global.js"></script>
<link rel="stylesheet" href="//images.koolearn.com/shark/project/zt/2017/0720app/css/style.css?e616d4" />
<script type="text/javascript">
      seajs.config({
          base: '//images.koolearn.com/shark/',
          importBase: '//images.koolearn.com/shark/',
          comboExcludes: function(uri) {
              return true
          }
      });
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
    seajs.use('project/zt/2017/0720app/js/page.js',function(exports){
        $(function(){
            exports({
                url:'//appstore.koolearn.com/app/feature/latest_version',
                obj:customData
            });
        })
    })
</script>
<title>首页</title>
<script>
	var theme_color = '${theme_color}';
</script>
</head> 
<body>
	<div class="i-slide">
		<section>
			<!-- 如果需要导航按钮 -->
			<a class="arrow-left s-arrow" href="javascript:void(0)"></a>
			<a class="arrow-right s-arrow" href="javascript:void(0)"></a>
			<!-- 图片位置 -->
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<c:forEach var="image" items="${websiteImagesList}" varStatus="status">
						<div class="swiper-slide" style="background: <c:if test="${empty image.color}">#EF550F;</c:if><c:if test="${!empty image.color}">${image.color}</c:if>;">
							<a target="_blank" href="<c:if test='${image.linkAddress!=null&&image.linkAddress!=""}'>${image.linkAddress}</c:if>">
								<img class="imgload" src="<%=staticImage%>${image.imagesUrl}" alt="${image.title}">
							</a>
						</div>
					</c:forEach>
				</div>
			</div>
			<!-- 如果需要分页器 -->
			<div class="pagination"></div>
		</section>
	</div>
	<!-- /index slide -->
	<div id="aCoursesList">
		<!-- /为你推荐 开始 -->
<!-- 		<div class="bg-fa of"> -->
<!-- 			<section class="container"> -->
<!-- 				<header class="comm-title"> -->
<!-- 					<span class="fr mt5"><a href="javascript:void(0)" title="换一换" class="c-master" onclick="huanyihuan()">换一换</a></span> -->
<!-- 					<h2 class="fl tac"> -->
<!-- 						<span class="c-333">为你推荐</span> -->
<!-- 					</h2> -->
<!-- 				</header> -->
<!-- 				<article class="comm-course-list"> -->
<!-- 					<ul class="of" id="weinituijian"> -->
						
<!-- 					</ul> -->
<!-- 					<div class="clear"></div> -->
<!-- 				</article> -->
<!-- 			</section> -->
<!-- 		</div> -->
		<!-- /为你推荐 结束 -->
		<!-- /网校课程 开始 -->
		<div>
			<section class="container">
				<header class="comm-title">
					<h2 class="tac">
						<span class="c-333">网校课程</span>
					</h2>
				</header>
				<div>
					<section class="c-tab-title">
						<a href="javascript:void(0)" title="精品课程" onclick="bna('FOLLOW',this)" class="current boutiqueCourse"></a>
<!-- 						<a href="javascript:void(0)" title="最新课程" onclick="bna('NEW',this)">最新课程</a> -->
<!-- 						<a href="javascript:void(0)" title="全部课程" onclick="bna('ALL',this)">全部课程</a> -->
					</section>
				</div>
				<div>
					<article class="comm-course-list">
						<ul class="of" id="bna">
						</ul>
						<div class="clear"></div>
					</article>
<!-- 					<section class="tac pt20"> -->
<%-- 						<a href="${ctx }/front/showcoulist" title="全部课程" class="comm-btn c-btn-2">全部课程</a> --%>
<!-- 					</section> -->
				</div>
			</section>
		</div>
		<!-- /网校课程 结束 -->
		<!-- /网校名师 开始 -->
		<div>
			<section class="container">
				<header class="comm-title">
					<h2 class="tac">
						<span class="c-333">网校名师</span>
					</h2>
				</header>
				<div>
					<article class="i-teacher-list">
						<ul class="of">
							<c:forEach items="${teacherList}" var="teacher" varStatus="index">
								<li>
									<section class="i-teach-wrap">
										<div class="i-teach-pic">
											<a href="${ctx}/front/teacher/${teacher.id}" title="${teacher.name}">
												<c:if test="${not empty teacher.picPath&&teacher.picPath!=''}">
													<img alt="${teacher.name}" src="${ctx}/static/inxweb/img/default-tea-img.gif" xsrc="<%=staticImage%>${teacher.picPath}">
												</c:if>
												<c:if test="${empty teacher.picPath||teacher.picPath==''}">
													<img alt="${teacher.name}" src="${ctx}/static/inxweb/img/default-img.gif" xsrc="${ctx}/static/inxweb/img/default-img.gif">
												</c:if>
											</a>
										</div>
										<div class="mt10 hLh30 txtOf tac">
											<a href="${ctx}/front/teacher/${teacher.id}" title="${teacher.name}" class="fsize18 c-666">${teacher.name}</a>
										</div>
										<div class="hLh30 txtOf tac">
											<span class="fsize14 c-999">${teacher.education }</span>
										</div>
										<div class="mt15 i-q-txt">
											<p class="c-999 f-fA">${teacher.career }</p>
										</div>
									</section>
								</li>
							</c:forEach>
						</ul>
						<div class="clear"></div>
					</article>
<!-- 					<section class="tac pt20"> -->
<%-- 						<a href="${ctx}/front/teacherlist" title="全部讲师" class="comm-btn c-btn-2">全部讲师</a> --%>
<!-- 					</section> -->
				</div>
			</section>
		</div>
		<!-- /网校名师 结束 -->
		<!-- /文章 开始 -->
<div id="aCoursesList" class="bg-fa of" style="background-color:#fff;padding-bottom:0">
		<section class="container">
			<section class="i-article">
				<div class="fl col-7">
					<section class="mr30">
						<header class="comm-title all-article-title">
							<h2 class="fl tac">
								<span class="c-333">文章</span>
							</h2>
							<section class="c-tab-title">
								<a href="javascript: void(0)">&nbsp;</a>
							</section>
						</header>
						<!-- /无数据提示 开始-->
						<c:if test="${empty articleList }">
							<section class="no-data-wrap">
								<em class="icon30 no-data-ico">&nbsp;</em> <span class="c-666 fsize14 ml10 vam">没有相关数据，小编正在努力整理中...</span>
							</section>
						</c:if>
						<!-- /无数据提示 结束-->
						<article class="i-article-list">
							<!-- /文章列表 开始-->
							<ul>
								<c:if test="${not empty articleList }">
									<c:forEach var="article" items="${articleList }">
										<li>
											<aside class="i-article-pic">
												<img xSrc="<%=staticImage%>${article.imageUrl }" src="${ctx }/static/inxweb/img/default-img.gif" alt="${article.title }">
											</aside> <!-- ${ctx }/web/article/showInfor/${article.articleId } -->
											<h3 class="hLh30 txtOf">
												<a href="${ctx }/front/articleinfo/${article.articleId}.html" title="${article.title }" class="i-art-title">${article.title }</a>
											</h3>
											<section class="i-q-txt mt5 i-q-txt2">
												<p>
													<span class="c-999 f-fA">${article.summary }</span>
												</p>
											</section>
											<section class="hLh30 txtOf mt5 pr10 a-list-extrainfo">
												<span class="fr"><tt class="c-999 f-fM">
														<!-- 1小时前发布 -->
														<fmt:formatDate value="${article.publishTime }" pattern="yyyy-MM-dd HH:mm" />
													</tt></span>
												<div class="fl">
													<span> <a class="noter-dy vam" title="回答" href="${ctx }/front/articleinfo/${article.articleId}.html">
															<em class="icon18">&nbsp;</em>(<span>${article.commentNum }</span>)
														</a> <tt title="赞一下" class="noter-zan vam ml10 f-fM" onclick="addPraise('${article.articleId}',3)">
															<em class="icon18">&nbsp;</em>(<span class="addPraise${article.articleId}_3 praiseCount">${article.praiseCount }</span>)
														</tt>
													</span>
												</div>
											</section>
										</li>
									</c:forEach>
								</c:if>
							</ul>
							<!-- /文章列表 结束-->
						</article>
					</section>
				</div>
				<!-- 好文推荐 -->
				<aside class="fl col-3 articleRecommend"></aside>
				<div class="clear"></div>
			</section>
		</section>
		<!-- /文章列表 结束 -->
	</div>	
		<!-- /文章 结束 -->
		<div class="">
	<div class="container">
		<header class="comm-title">
					<h2 class="tac">
						<span class="c-333">客户端下载</span>
					</h2>
				</header>
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
							<a href="/download/download_android" style="width:70px;margin-right:5px;float:right">下载</a>
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
<!-- 		<!-- /课程互动 开始--> 
<!-- 		<div class="bg-fa of mt30"> -->
<!-- 			<section class="container"> -->
<!-- 				<article class="fl col-7"> -->
<!-- 					<div class="mr50"> -->
<!-- 						<header class="comm-title"> -->
<!-- 							<h2 class="fl tac"> -->
<!-- 								<span class="c-333">课程互动</span> -->
<!-- 							</h2> -->
<!-- 						</header> -->
<!-- 						<div class="i-question-list"> -->
<!-- 							<ul id="iQuestion"> -->
<%-- 								<c:forEach items="${commentList}" var="comment" varStatus="status"> --%>
<!-- 									<li> -->
<!-- 										<section class="i-q-l-wrap"> -->
<!-- 											<div class="u-face"> -->
<%-- 												<c:if test="${empty comment.picImg }"> --%>
<%-- 													<img width="50" height="50" class="picImg" src="${ctx }/static/inxweb/img/avatar-boy.gif" xsrc="${ctx }/static/inxweb/img/avatar-boy.gif"> --%>
<%-- 												</c:if> --%>
<%-- 												<c:if test="${not empty comment.picImg }"> --%>
<%-- 													<img width="50" height="50" class="picImg" src="${ctx }/static/inxweb/img/avatar-boy.gif" xsrc="${ctx }${comment.picImg }"> --%>
<%-- 												</c:if> --%>
<!-- 											</div> -->
<!-- 											<section class="hLh20 of"> -->
<%-- 												<span class="fr"><tt class="c-ccc f-fG"><fmt:formatDate value="${comment.addTime }" pattern="yyyy/MM/dd HH:mm" /></tt></span>  --%>
<!-- 												<span class="fsize16 c-666"> -->
<%-- 												 	<c:if test="${empty comment.userName }"> --%>
<%-- 														${comment.email} --%>
<%-- 													</c:if> --%>
<%-- 													<c:if test="${not empty comment.userName }"> --%>
<%-- 														${comment.userName} --%>
<%-- 													</c:if> --%>
<!-- 												</span>  -->
<!-- 											    <span class="fsize14 c-999 ml5 f-fA">评论课程：</span> -->
<!-- 											</section> -->
<!-- 											<section class="hLh20 of mt10"> -->
<%-- 												<a class="c-master fsize14" href="${ctx}/front/couinfo/${comment.courseId}">《${comment.courseName}》</a> --%>
<!-- 											</section> -->
<!-- 											<section class="i-q-txt"> -->
<!-- 												<p> -->
<%-- 													<span class="c-999 f-fA txtOf"> ${comment.content} </span> --%>
<!-- 												</p> -->
<!-- 											</section> -->
<!-- 										</section> -->
<!-- 									</li> -->
<%-- 								</c:forEach> --%>
<!-- 							</ul> -->
<!-- 						</div> -->
<!-- 					</div> -->
<!-- 				</article> -->
<!-- 				<aside class="fl col-3"> -->
<!-- 					<header class="comm-title"> -->
<!-- 						<span class="fr"><a class="c-master" title="" href="">换一换</a></span> -->
<!-- 						<h2 class="fl tac"> -->
<!-- 							<span class="c-333">学生动态</span> -->
<!-- 						</h2> -->
<!-- 					</header> -->
<!-- 					<div class="stud-act-list"> -->
<!-- 						<section> -->
<!-- 							<ul id="s-action" class="studentDynamicHtml"> -->

<!-- 							</ul> -->
<!-- 						</section> -->
<!-- 					</div> -->
<!-- 				</aside> -->
<!-- 				<div class="clear"></div> -->
<!-- 			</section> -->
<!-- 		</div> -->
<!-- 		<!-- /课程互动 结束--> 
		
	</div>
	<script type="text/javascript" src="${ctx}/static/inxweb/js/swiper-2.1.0.js"></script>
	<script type="text/javascript" src="${ctx}/static/inxweb/front/index.js"></script>
	<script type="text/javascript" src="${ctx}/static/inxweb/front/index_theme_color.js"></script><!-- 换肤 -->
	<script src="${ctx }/static/inxweb/acticle/acticle.js" type="text/javascript"></script>
	<script>
	$(function() {
		articleRecommendIndex();//好文推荐
		scrollLoad(); //响应滚动加载课程图片
	});
		$(function() {
			sSwiperFun(); //幻灯片调取
			upSlideFun("#iQuestion"); //向上滚动互动
			scrollLoad(); //响应滚动加载课程图片
			$(".boutiqueCourse").click();//网校课程-精品课程
			huanyihuan();
			studentDynamic();//学生动态



			var uri = window.location.search;
			var val = "msg";
			var re = new RegExp("" + val + "=([^&?]*)", "ig");
			var msg=((uri.match(re)) ? (uri.match(re)[0].substr(val.length + 1)) : null);
			if(msg!=null && msg!='' && msg=='LimitLogin'){
				dialog('提示信息',"您的帐号在其他地点登录，请重新登录",1);
			}
		});
	</script>
	

</body>
</html>