package com.lib.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.lib.dao.UserloginDAO;
import com.lib.dto.Userlogindetails;

@WebServlet("/userlogin")
public class Userlogin extends HttpServlet{

	private static final long serialVersionUID = 1L;
	UserloginDAO userdata =null;
        
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username = request.getParameter("Username");
		String Email = request.getParameter("Email");
	  Userlogindetails u1 = new Userlogindetails();
	  u1.setUsername(Username);
	  u1.setEmail(Email);
	  userdata = new UserloginDAO();
	   int uid = userdata.UserValidate(u1);
	   HttpSession session = request.getSession();     
       session.setAttribute("lid", uid);
	   System.out.print(uid);
		if(uid==-1)
		{
			 RequestDispatcher rd = request.getRequestDispatcher("Userlogin.jsp");
		       rd.forward(request, response);
		} 
		else
		{
			RequestDispatcher rd = request.getRequestDispatcher("allbook.jsp");
		       rd.forward(request, response);
		}
		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}

