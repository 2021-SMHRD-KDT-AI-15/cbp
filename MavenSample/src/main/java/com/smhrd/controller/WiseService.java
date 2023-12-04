package com.smhrd.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.json.Json;
import javax.json.JsonArrayBuilder;
import javax.json.JsonObjectBuilder;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.smhrd.model.WiseDAO;
import com.smhrd.model.WiseDTO;

@WebServlet("/WiseService")
public class WiseService extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void service(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        WiseDAO dao = new WiseDAO();
        ArrayList<WiseDTO> quotes = dao.list();

        // 데이터를 JSON 형식으로 변환
        JsonArrayBuilder arrayBuilder = Json.createArrayBuilder();
        for (WiseDTO quote : quotes) {
            JsonObjectBuilder objectBuilder = Json.createObjectBuilder();
            objectBuilder.add("W_NUM", quote.getW_NUM());
            objectBuilder.add("WISE", quote.getWISE());
            arrayBuilder.add(objectBuilder);
        }

        // JSON 데이터를 응답
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        response.getWriter().write(arrayBuilder.build().toString());
    }
}