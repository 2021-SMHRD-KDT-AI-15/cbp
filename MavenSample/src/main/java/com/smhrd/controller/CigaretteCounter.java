package com.smhrd.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class CigaretteCounter
 */
@WebServlet("/CigaretteCounter")
public class CigaretteCounter extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 오늘 피운 담배의 갯수를 저장하는 로직
        // 이 부분은 실제로 오늘 피운 담배의 갯수를 증가시키는 로직으로 대체해야 합니다.

        // 예시: 세션을 이용하여 오늘 피운 담배의 갯수를 증가시키는 코드
        HttpSession session = request.getSession(true);
        int cigaretteCount = 0;

        if (session.getAttribute("cigaretteCount") != null) {
            cigaretteCount = (int) session.getAttribute("cigaretteCount");
        }

        cigaretteCount++;
        session.setAttribute("cigaretteCount", cigaretteCount);

        // 클라이언트에게 응답
        response.getWriter().write("Cigarette count increased");
    }
}
