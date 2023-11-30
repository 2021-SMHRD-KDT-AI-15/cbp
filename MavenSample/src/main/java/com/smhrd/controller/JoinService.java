package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		// 1. 요청에 대한 인코딩 작업

		request.setCharacterEncoding("utf-8");

		// 2. 요청값이 보내주는 데이터 꺼내오기

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String q_date = request.getParameter("q_date");
		String s_date = request.getParameter("s_date");
		int price = Integer.parseInt(request.getParameter("price"));
		int s_daily = Integer.parseInt(request.getParameter("s_daily"));
		String joinday = request.getParameter("joinday");
	

		// 3. DAO 클래스 객체 생성 -> DB에 대한 작업을 진행할 수 있음

		MemberDAO dao = new MemberDAO();

		// 4. DAO의 회원가입 기능(메소드) 호출

		MemberDTO dto = new MemberDTO(email, pw, nick, q_date, s_date, price, s_daily, joinday);
		int result = dao.join(dto);

		// 5. 호출된 기능의 결과에 따라 화면 결과 출력

//		if (result > 0) { // 회원가입에 성공했을 때 -> JoinSuccess.jsp 이동 -> nick 값 가져가야함
//			request.setAttribute("nick", nick);
//			RequestDispatcher rd = request.getRequestDispatcher("JoinSuccess.jsp");
//			rd.forward(request, response);
//		}else { // 회원가입에 실패했을 때
			response.sendRedirect("Main.jsp");
//		}

	}

}
