package com.kedarnath.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kedarnath.dao.UserDao;
import com.kedarnath.models.FlightsList;
import com.kedarnath.models.PlacesList;

/**
 * Servlet implementation class AddMasterflight
 */
public class Addplace extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UserDao dao = new UserDao();
    public Addplace() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs = request.getSession();
	    PlacesList afl = new PlacesList();
	    afl.setPlacename(request.getParameter("placename"));
	    afl.setPlacetype(request.getParameter("placetype"));
	    dao.savemasterplace(afl);
	    response.sendRedirect("places-master-list.jsp");
	
	}

}
