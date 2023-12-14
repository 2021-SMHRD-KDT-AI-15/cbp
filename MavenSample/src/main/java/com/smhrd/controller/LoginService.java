package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.QprojectDAO;
import com.smhrd.model.QprojectDTO;
import com.smhrd.model.cigaDAO;
import com.smhrd.model.cigaDTO;

@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		
		MemberDAO dao = new MemberDAO();
		QprojectDAO dao1 = new QprojectDAO();
		cigaDAO dao2 = new cigaDAO();

		ArrayList<cigaDTO> q_list = new ArrayList<>();
		q_list = dao2.log(email);
		
		MemberDTO dto = new MemberDTO();
		dto.setEmail(email);
		dto.setPw(pw);
		
		QprojectDTO dto1 = new QprojectDTO();
		dto1.setEmail(email);
		
		MemberDTO result = dao.login(dto);
		QprojectDTO result1 = dao1.come(dto1);

		
		if (result != null) { // 로그인 성공
			
			HttpSession session = request.getSession();
			session.setAttribute("info", result);
			session.setAttribute("info1", result1);
			session.setAttribute("list", q_list);
			response.sendRedirect("LoginSuccess.jsp");

		} else {
			response.sendRedirect("LoginFail.jsp");
			
		}

	}

}
