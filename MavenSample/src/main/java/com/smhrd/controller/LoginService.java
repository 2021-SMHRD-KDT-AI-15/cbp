package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 인코딩

		request.setCharacterEncoding("utf-8");

		// 2. 데이터 꺼내오기

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		System.out.println(email+pw);

		// 3. MemberDAO 객체 생성

		MemberDAO dao = new MemberDAO();

		// 4. login() 호출 (<- 꺼내온 데이터 email, pw를 한 묶음으로 묶어서 전달 -> MemberDTO 활용)

		MemberDTO dto = new MemberDTO();
		dto.setEmail(email);
		dto.setPw(pw);

		System.out.println(email+pw);
		
		MemberDTO result = dao.login(dto);

		// 로그인에 성공했다면 회원정보를 공유할 수 있도록 session 영역에 저장해 페이지 이동
//		if (result != null) { // 로그인 성공
//			
//			HttpSession session = request.getSession();
//			session.setAttribute("info", result);
//
//		}
//
		response.sendRedirect("Main.jsp");

	}

}
