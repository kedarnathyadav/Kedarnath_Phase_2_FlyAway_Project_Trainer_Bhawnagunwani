package com.kedarnath.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.kedarnath.dao.UserDao;
import com.kedarnath.models.Booking;
import com.kedarnath.models.Assign_Flights_List;
import com.kedarnath.models.Search;

@WebServlet("/addFlight")
public class addFlight extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UserDao dao = new UserDao();
    public addFlight() {
        super();
        // TODO Auto-generated constructor stub
    }
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
			HttpSession hs = request.getSession();
		    Assign_Flights_List afl = new Assign_Flights_List();
		    afl.setFlightname(request.getParameter("name"));
		    afl.setSource(request.getParameter("source"));
		    afl.setDestination(request.getParameter("destination"));
		    afl.setDay(request.getParameter("day"));
		    afl.setTicketfare(request.getParameter("ticketcost"));
		    dao.saveBooking(afl);
		    response.sendRedirect("flight-Dashboard.jsp");

	}

}
