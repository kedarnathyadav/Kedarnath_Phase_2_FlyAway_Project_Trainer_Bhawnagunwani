package com.kedarnath.web;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.math.BigInteger;
import com.kedarnath.dao.*;
import com.kedarnath.models.Booking;
import com.kedarnath.models.SaveBooking;
import com.kedarnath.models.Search;
@WebServlet("/Bookingsave")
public class Bookingsaveservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private UserDao dao = new UserDao();
	public Bookingsaveservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Booking.name_on_card = request.getParameter("name_on_card");
	    Booking.card_details = request.getParameter("card_details");
	    
	    if (Booking.name_on_card.equals("") || Booking.card_details.equals("")) {
	        System.out.println("Please enter valid card details");
	    	
	    }
	    HttpSession hs = request.getSession();
	    SaveBooking sb1 = new SaveBooking();
	    sb1.setSource(Search.source);
	    sb1.setDestination(Search.destination);
	    sb1.setDate(Search.date);
	    sb1.setDay(Search.day);
	    sb1.setFlightid(Booking.flight_booking_id);
	    sb1.setFlightname(Booking.flight_name);
	    sb1.setNoofpersons(Search.persons);
	    sb1.setPassengername(Booking.passenger_name);
	    sb1.setPassengeremail(Booking.passenger_email);
	    sb1.setPassengerphone(Booking.passenger_phone);
	    sb1.setCardperson(Booking.name_on_card);
	    sb1.setCardno(Booking.card_details);
	    sb1.setTicketfare(Search.persons*Booking.ticket_price);
	    dao.assignflights(sb1);
	    response.sendRedirect("Booking-successful.jsp");

	}

}
