package org.rone.study.web.ajax.controller;

import org.rone.study.web.ajax.service.AjaxService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@Controller
@RequestMapping("/ajax")
public class AjaxController {
	
	@Autowired
	private AjaxService AjaxController;

//	@RequestMapping("/ajaxTest.html")
//	public String ajaxTest() {
//		System.out.println("AjaxController ajaxTest..");
//		AjaxController.changeText();
//		return "ajax/success.jsp";
//	}
	
	@RequestMapping("/ajaxTest.html")
	public void ajaxTest(HttpServletRequest request, HttpServletResponse response) throws IOException {
		System.out.println("AjaxController ajaxTest...");
		AjaxController.changeText();
		System.out.println(request);
		System.out.println(request.getParameter("name"));
		System.out.println(request.getParameter("sex"));
		String htmlContent = "name:rone,sex:man";
		response.setContentType("text/html; charset=utf-8");
		response.getWriter().print(htmlContent);
	}
	
	
	
}
