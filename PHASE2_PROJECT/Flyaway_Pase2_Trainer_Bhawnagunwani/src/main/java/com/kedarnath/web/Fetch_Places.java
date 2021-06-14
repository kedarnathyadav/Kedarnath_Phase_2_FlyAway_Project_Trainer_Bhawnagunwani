package com.kedarnath.web;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kedarnath.dao.FLIGHTDAO;

@WebServlet("/fetch")
public class Fetch_Places extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public Fetch_Places() {
        super();
        // TODO Auto-generated constructor stub
    }
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		HttpSession session = request.getSession(true);
		FLIGHTDAO flightdao = new FLIGHTDAO(); 
		List<String> lop=new ArrayList<String>();
		List<String> loa=new ArrayList<String>();
		try {
			lop=flightdao.listOfPlaces();					//Get List<String> of Place Names 
			session.setAttribute("lop", lop); 
			loa=flightdao.listOfAirlines();					//Get List<String> of Airline Names
			session.setAttribute("loa", loa);
			response.sendRedirect("search-portal.jsp");
		
		}catch(Exception el) {
			session.setAttribute("exception", el);
			response.sendRedirect("AllError.jsp");
		}
		out.println(lop);

	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
