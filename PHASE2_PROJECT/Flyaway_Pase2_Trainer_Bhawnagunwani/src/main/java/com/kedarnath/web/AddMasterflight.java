package com.kedarnath.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kedarnath.dao.UserDao;
import com.kedarnath.models.Assign_Flights_List;
import com.kedarnath.models.FlightsList;

/**
 * Servlet implementation class AddMasterflight
 */
public class AddMasterflight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UserDao dao = new UserDao();
    public AddMasterflight() {
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
	    FlightsList afl = new FlightsList();
	    afl.setFlightname(request.getParameter("flightname"));
	    afl.setFlightcompany(request.getParameter("flightcompany"));
	    afl.setFlight_class(request.getParameter("fclass"));
	    dao.savemasterflight(afl);
	    response.sendRedirect("flight-master-list.jsp");
	
	}

}
