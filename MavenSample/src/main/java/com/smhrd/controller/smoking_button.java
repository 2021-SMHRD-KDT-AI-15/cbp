package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDTO;
import com.smhrd.model.QprojectDAO;

@WebServlet("/smoking_button")
public class smoking_button extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		request.setCharacterEncoding("utf-8");
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		QprojectDAO dao1 = new QprojectDAO();
		
		int result = dao1.smoking(info.getEmail());

		System.out.println(result);
		
		if(result > 0) {
			System.out.println("카운팅 성공");
			response.sendRedirect("buttonSuccess.jsp");
		}else {
			System.out.println("카운팅 실패");
		}
		
	}

}
