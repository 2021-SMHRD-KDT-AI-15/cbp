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
import com.smhrd.model.QprojectDTO;


@WebServlet("/smoking_button")
public class smoking_button extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		System.out.println("ss");
		// 1
		request.setCharacterEncoding("utf-8");
		
		
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		// 2
		// int cigarette = Integer.parseInt(request.getParameter("cigarette-icon"));
		
		// 값이 넘어옴
		// 3
		//
		
		// 이거는 이메일 이랑 하루 흡연 가져오는거 스모킹
		QprojectDAO dao1 = new QprojectDAO();
		
		//4
//		QprojectDTO dto1 = new QprojectDTO();
		//dto1.setToday_s(cigarette);
		
		// 이 밑에까 스모킹으로 넘어가라 한거다~~
		int result = dao1.smoking(info.getEmail());

		System.out.println(result);
		
		/*
		 * if (result != null) {
		 * 
		 * request.setAttribute("smoking", cigarette); //RequestDispatcher rd =
		 * request.getRequestDispatcher("main.jsp"); //rd.forward(request, response);
		 * 
		 * 
		 * } else {
		 * 	
		 * System.out.println("결과가 없습니다."); }
		 */
		
		if(result > 0) {
			System.out.println("카운팅 성공");
			response.sendRedirect("buttonSuccess.jsp");
		}else {
			System.out.println("카운팅 실패");
		}
		
		
	}

}
