package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.QprojectDAO;
import com.smhrd.model.QprojectDTO;

@WebServlet("/QprojectService")
public class QprojectService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 1. 요청값에 대한 인코딩
		request.setCharacterEncoding("utf-8");

		// 2. 요청값이 보내주는 데이터 꺼내오기
		String email = request.getParameter("email");
		int s_day = Integer.parseInt(request.getParameter("s_day"));
		int p_day = Integer.parseInt(request.getParameter("p_day"));
		int today_s = Integer.parseInt(request.getParameter("today_s"));
		String p_start = request.getParameter("p_start");
		String p_end = request.getParameter("p_end");
		int p_count = Integer.parseInt(request.getParameter("p_count"));

		// 3. DAO 클래스 객체 생성 -> DB에 대한 작업을 진행할 수 있다
		QprojectDAO dao = new QprojectDAO();

		// 4. DAO의 전반적인 내용 호출
		QprojectDTO dto = new QprojectDTO(email, p_day, p_start, p_end, p_count);
		int result = dao.put(dto);
	}

}
