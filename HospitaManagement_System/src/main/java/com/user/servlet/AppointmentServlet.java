package com.user.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.dao.AppointmentDao;
import com.db.DBConnect;
import com.entity.Appointment;

@WebServlet("/addAppointment")
public class AppointmentServlet extends HttpServlet{

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		int userId = Integer.parseInt(req.getParameter("userid"));
		String fullname = req.getParameter("fullname");
		String gender = req.getParameter("gender");
		String age = req.getParameter("age");
		String appoint_date = req.getParameter("appoint_date");
		String email = req.getParameter("email");
		String phno = req.getParameter("phno");
		String diseases = req.getParameter("diseases");
		int doctorid = Integer.parseInt(req.getParameter("doct"));
		String address = req.getParameter("address");
		String status = req.getParameter("status");
		
		Appointment ap = new Appointment(userId, fullname, gender, age, appoint_date, email, phno, diseases, doctorid, address,"Pending");
		AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
		HttpSession session = req.getSession();
		if(dao.addAppointment(ap))
		{
			session.setAttribute("succMsg","Appointment Successfully");
			resp.sendRedirect("user_appointment.jsp");
		}
		else {
			session.setAttribute("errorMsg","something wrong on server");
			resp.sendRedirect("user_appointment.jsp");
		}
		
	}
	
}
