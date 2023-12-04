package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.WiseDAO;
import com.smhrd.model.WiseDTO;

@WebServlet("/WiseService")
public class WiseService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 인코딩

//		request.setCharacterEncoding("utf-8");

		// 2. 데이터 꺼내오기

//		int num = Integer.parseInt(request.getParameter("num"));
//		String wise = request.getParameter("wise");

		// 3. MemberDAO 객체 생성

		WiseDAO dao = new WiseDAO();
		ArrayList<WiseDTO> quotes = dao.list();

//		WiseDTO dto = new WiseDTO();
//		dto.setW_num(w_num);
//		dto.setWise(wise);
		
//		WiseDTO result = dao.detail(num);
		
		request.setAttribute("list", quotes);
//		request.setAttribute("result", result);
		RequestDispatcher rd = request.getRequestDispatcher("Main.jsp");
		rd.forward(request, response);

		// 로그인에 성공했다면 회원정보를 공유할 수 있도록 session 영역에 저장해 페이지 이동
//		if (result != null) { // 로그인 성공

//			HttpSession session = request.getSession();
//			session.setAttribute("wise", result);
//			response.sendRedirect("Main.jsp");

//		}

	}

}
