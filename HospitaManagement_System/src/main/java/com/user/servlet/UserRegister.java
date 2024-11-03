package com.user.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.User;

@WebServlet("/user_register")
public class UserRegister extends HttpServlet {
  
protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		PrintWriter out = response.getWriter();
			try
			{
				
			
			String fullName = request.getParameter("fullname");
			String email = request.getParameter("email");
			String password = request.getParameter("password");
			
			User u = new User(fullName,email,password);
			
			
			UserDao dao = new UserDao(DBConnect.getConn());
			
			boolean f=dao.userRegistration(u);
			String msg=null;
			if(f==true)
			{
				msg = "Successfull";
			}
			else {
				msg = "unSuccessfull";
			}
			
			request.setAttribute("msg", msg);
			request.getRequestDispatcher("signup.jsp").forward(request, response);
			
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
		}
		{
			
		}
	}
}
