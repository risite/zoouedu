package com.inxedu.os.edu.controller.download;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.inxedu.os.common.controller.BaseController;
import com.inxedu.os.common.entity.PageEntity;
import com.inxedu.os.edu.entity.article.QueryArticle;

/**
 * 前台文章资讯
 * @author www.inxedu.com
 */
@Controller
@RequestMapping("/download")
public class DownloadController extends BaseController {
	private static Logger logger = LoggerFactory.getLogger(DownloadController.class);
//	// 文章列表
//	private static String listPage = getViewPath("/web/article/article-list");
//	// 好文推荐
//	private static String queryArticleRecommend = getViewPath("/web/article/article-recommend");
//	// 文章详情
//	private static String articleInfo = getViewPath("/web/article/article-info");
	
//	@Autowired
//	private ArticleService articleService;
//	@Autowired
//	private WebsiteImagesService websiteImagesService;

	/**
	 * 分页查询文章列表
	 */
	@RequestMapping("/download_app")
	public ModelAndView showArticleList(HttpServletRequest request, @ModelAttribute("queryArticle") QueryArticle queryArticle, @ModelAttribute("page") PageEntity page) {
		ModelAndView model = new ModelAndView(getViewPath("/web/download/download_app"));
//		try {
//			// 查询已经发布的文章资讯
//			queryArticle.setType(2);
//			page.setPageSize(10);
//			List<Article> articleList = articleService.queryArticlePage(queryArticle, page);
//			model.addObject("articleList", articleList);
//			model.addObject("page", page);
//			model.setViewName(listPage);
//
//		} catch (Exception e) {
//			model.setViewName(this.setExceptionRequest(request, e));
//			logger.error("showArticleList()--error", e);
//		}
		return model;
	}
	@RequestMapping("/download_ios")
	public ModelAndView downloadIOS(HttpServletRequest request, @ModelAttribute("queryArticle") QueryArticle queryArticle, @ModelAttribute("page") PageEntity page) {
		ModelAndView model = new ModelAndView(getViewPath("/web/download/download_ios"));
		return model;
	}
	@RequestMapping("/download_android")
	public ModelAndView downloadAndroid(HttpServletRequest request, @ModelAttribute("queryArticle") QueryArticle queryArticle, @ModelAttribute("page") PageEntity page) {
		ModelAndView model = new ModelAndView(getViewPath("/web/download/download_android"));
		return model;
	}
}
