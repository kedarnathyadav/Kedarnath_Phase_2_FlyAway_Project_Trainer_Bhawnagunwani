package com.kedarnath.web;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

import com.kedarnath.util.HibernateUtil;


@WebServlet("/changePassword")
public class ChangePassword extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public ChangePassword() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Transaction transaction = null;
		String id = request.getParameter("passwordEntered");
		System.out.println(id);
		try(Session safl = HibernateUtil.getSessionFactory().openSession()) {
		transaction = safl.beginTransaction();
		Query a=safl.createNativeQuery("UPDATE flyawayphase2.users SET password = '"+id+"' WHERE (id = 3)");
		int res = a.executeUpdate();
		transaction.commit();
		RequestDispatcher dispatcher = request.getRequestDispatcher("change-password.jsp");
		dispatcher.include(request, response);
		out.println("<h3 style='color:Blue'>Update Successfull</h3>");
		//response.sendRedirect();
		}catch(Exception ex) {
		if(transaction != null) 
		System.out.println(ex.getMessage());
		}
		
		
	
	}

}
