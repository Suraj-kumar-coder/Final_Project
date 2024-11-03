package com.admin.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.DoctorDao;
import com.db.DBConnect;

@WebServlet("/deleteDoctor")
public class DeleteDoctor extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		int id = Integer.parseInt(req.getParameter("id"));
		
		DoctorDao dao = new DoctorDao(DBConnect.getConn());
		HttpSession session = req.getSession();
		if(dao.deleteDoctor(id))
		{
			session.setAttribute("succMsgdel", "Delete Deatil successfully.. ");
			resp.sendRedirect("admin/doctor.jsp");
		}
		else {
			session.setAttribute("errorMsgdel", "Delete processing something error");
			resp.sendRedirect("admin/doctor.jsp");
		}
		
	}
	
}
