package com.doctor.servlet;

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


@WebServlet("/doctChangePassword")
public class DoctorPasswordChange extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		int uid = Integer.parseInt(request.getParameter("uid"));
		String oldPassword = request.getParameter("oldpassword");
		String newPassword = request.getParameter("newpassword");
		
		DoctorDao dao = new DoctorDao(DBConnect.getConn());
		
		HttpSession session = request.getSession();
		
		
		if(dao.checkOldPassword(uid, oldPassword))
		{
			if(dao.changePassword(uid, newPassword))
			{
				
				session.setAttribute("succMsg","Password change Successfully");
				response.sendRedirect("doctor/edit_profile.jsp");
			}
			else {
			
				session.setAttribute("errorMsg","something error !");
				
				response.sendRedirect("doctor/edit_profile.jsp");
			}
		}else {
			
			session.setAttribute("errorMsg","oldPassword Incorrect !");
			
			response.sendRedirect("doctor/edit_profile.jsp");
		}
		
	}
	

}
