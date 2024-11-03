package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.dao.UserDao;
import com.db.DBConnect;
import com.entity.Doctor;
import com.entity.User;

@WebServlet("/Login")
public class Userlogin extends HttpServlet{
  @Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		try {
				
				String email = req.getParameter("email");
				String password = req.getParameter("password");
				
				HttpSession session= req.getSession();
				UserDao dao = new UserDao(DBConnect.getConn());
				
				User user = dao.Userlogin(email,password);
				DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
				Doctor d = dao2.login(email, password);
				String msg= null;
				
				if(user != null)
				{
					session.setAttribute("userObj", user);
					resp.sendRedirect("index.jsp");
				}
				else if("admin@gmail.com".equals(email) && "admin".equals(password))
				{
					session.setAttribute("adminObj", new User());
					
					resp.sendRedirect("admin/index.jsp");
				}
				
				else if( d != null)
				{
					session.setAttribute("doctObj",d);
					resp.sendRedirect("doctor/index.jsp");
				}
				
				else
				{
					msg = " invalid email & password";
					
					req.setAttribute("msg", msg);
					req.getRequestDispatcher("user_login.jsp").forward(req, resp);
				}
				
				
				
			}catch(Exception e)
			{
				e.printStackTrace();
			}
		}

}
