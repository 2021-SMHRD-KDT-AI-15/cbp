package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.MemberDAO;
import com.smhrd.model.MemberDTO;
import com.smhrd.model.QprojectDAO;
import com.smhrd.model.QprojectDTO;

@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		request.setCharacterEncoding("utf-8");

		String email = request.getParameter("email");
		String pw = request.getParameter("pw");
		String nick = request.getParameter("nick");
		String q_date = request.getParameter("q_date");
		String s_date = request.getParameter("s_date");
		int price = Integer.parseInt(request.getParameter("price"));
		int s_daily = Integer.parseInt(request.getParameter("s_daily"));
		String p_start = request.getParameter("q_date");

		MemberDAO dao = new MemberDAO();
		QprojectDAO dao1 = new QprojectDAO();

		MemberDTO dto2 = new MemberDTO(email);
		int result2 = dao.check(dto2);

		if (result2 != 0) {
			response.sendRedirect("JoinFail.jsp");
		} else {
			MemberDTO dto = new MemberDTO(email, pw, nick, q_date, s_date, price, s_daily);
			int result = dao.join(dto);

			QprojectDTO dto1 = new QprojectDTO(email, p_start);
			int result1 = dao1.put(dto1);
			int result3 = dao1.ciga(dto1);
			request.setAttribute("nick", nick);
			RequestDispatcher rd = request.getRequestDispatcher("JoinSuccess.jsp");
			rd.forward(request, response);
		}

	}

}