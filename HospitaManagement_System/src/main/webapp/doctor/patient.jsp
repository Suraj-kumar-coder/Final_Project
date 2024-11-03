<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <%@page isELIgnored="false"%> 
 <%@ page import="com.db.DBConnect" %>
<%@ page import="com.dao.AppointmentDao" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.entity.Appointment" %>
<%@ page import="java.util.List" %>

 <%@ page import="com.entity.Doctor" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.paint-card {
  box-shadow :0 0 20px 0 rgba(0,0,0.3);
}

</style>
</head>
<%@include file="../component/allcss.jsp" %>
<body>

   <c:if test= "${empty doctObj}">
		<c:redirect url="../user_login.jsp"></c:redirect>
	</c:if>

     <%@include file="navbar.jsp" %>
       
       <div class="container p-3">
			<div class="row">
			
			
				<div class="col-md-12">
					<div class="card paint-card">
						<div class="card-body">
							<p class="fs-3  text-center text-success"> Patient Details </p>
							 <c:if test ="${not empty errorMsg }">
                              <p class ="fs-4 text-center text-danger">${errorMsg}</p>
                              <c:remove var= "errorMsg" scope ="session" />
                            </c:if>
     
                      <c:if test ="${not empty succMsg }">
                      <p class ="fs-4 text-center text-danger">${succMsg}</p>
                      <c:remove var= "succMsg" scope ="session" />
                   </c:if>
                   
                          <table class="table">
								<thead>
									<tr>
										<th scope="col">Full Name</th>
										<th scope="col">Gender</th>
										<th scope="col">Age</th>
										<th scope="col">Appointment Date</th>
										<th scope="col">Email</th>
										<th scope="col">Mob no</th>
										<th scope="col">Diseases</th>
										<th scope="col">Status</th>
										<th scope="col">Action</th>
									</tr>
								</thead>
								
								   <tbody>
								   
								   <% 
							       Doctor d = (Doctor) session.getAttribute("doctObj");
								   AppointmentDao dao = new AppointmentDao(DBConnect.getConn());
								   List<Appointment> list = dao.getAllAppointmentByDoctorLogin(d.getId());
								   for(Appointment ap : list) 
									{
									   
									
								   %>
								      
								      <tr>
													<th><%=ap.getFullname()%></th>
													<td><%=ap.getGender()%></td>
													<td><%=ap.getAge()%></td>
													<td><%=ap.getAppointDate()%></td>
													<td><%=ap.getEmail()%></td>
													<td><%=ap.getPhNo()%></td>
													<td><%=ap.getDiseases()%></td>
													<td><%=ap.getStatus()%></td>
													
													<td>
														
									                 	<a href="comment.jsp?id=<%=ap.getId()%>" class="btn btn-sm btn-warning">Comment</a>
																
															
														
													</td>
												</tr>
											<%
										}
		
									%>
								
								      
								     
								
							</tbody>
						</table>	
		
                       </div>
                      </div>
                     </div>
                    </div>
                   </div>
                      
       
       
       
</body>
</html>