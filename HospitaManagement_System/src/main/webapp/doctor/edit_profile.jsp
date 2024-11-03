<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
 <%@page isELIgnored="false"%> 
 <%@ page import="com.dao.SpecialistDao" %>
<%@ page import="com.entity.Specialist" %>
<%@ page import="java.util.List" %>
<%@ page import="com.db.DBConnect" %>
<%@ page import="com.dao.DoctorDao" %>
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
		
		<%@include file="navbar.jsp" %>
		
		
		   <div class="container p-4 ">
			<div class="row">
				<div class="col-md-4 ">
					<div class="card paint-card">
						
							<p class="fs-3  text-center "> Change password </p>
							
					<h3>
					
							 <c:if test="${not empty errorMsg }">
								<p class="fs-4 text-center text-danger"> ${errorMsg }</p>
								<c:remove var="errorMsg" scope="session" />
							</c:if>
							<c:if test="${not empty succMsg }">
								<p class="fs-4 text-center text-success"> ${succMsg }</p>
								<c:remove var="succMsg" scope="session" />
							</c:if>
						</h3>	
							 <div class="card-body"> 
							   <form action ="../doctChangePassword" method ="post">
							       <div class="mb-3">
							        <label>Enter new password</label>
							        <input type="text" name="newpassword" class="form-control" required>
							       </div>
							       
							       <div class="mb-3">
							        <label>Enter  old password</label>
							        <input type="text" name="oldpassword" class="form-control" required>
							       </div>
							       <input type="hidden" value="${doctObj.id }" name="uid">
							       <button class=" btn btn-success col-md-12">Change Password</button>
							     </form>
							 </div>
						</div>
					</div>
					  
					  <div class="col-md-8">
					     <div class="card paint-card">  
					       <p class="fs-3  text-center ">Edit Profile</p>
					         
					         <h3>
					
							 <c:if test="${not empty errorMsgd }">
								<p class="fs-4 text-center text-danger"> ${errorMsgd }</p>
								<c:remove var="errorMsgd" scope="session" />
							</c:if>
							<c:if test="${not empty succMsgd }">
								<p class="fs-4 text-center text-success"> ${succMsgd }</p>
								<c:remove var="succMsgd" scope="session" />
							</c:if>
						</h3>	
					         <div class="card-body">
					           <form action ="../doctorUpdateProfile" method="post">
           <div class="mb-2">
               <label class ="form-label">Full Name</label>
               <input type="text" required name ="fullname" class= "form-control" value="${doctObj.fullname }">
           </div>
           
           
           <div class="mb-3">
               <label class ="form-label">DOB</label>
               <input type="date" required name ="dob" class= "form-control" value="${doctObj.dob }">
           </div>
           
           <div class="mb-3">
               <label class ="form-label">Qualification</label>
               <input type="text" required name ="qualification" class= "form-control" value="${doctObj.qualification}">
           </div>
           
           <div class="mb-3">
               <label class ="form-label">Specialist</label>
               <select name="specialist" required class= "form-control">
              <option>${doctObj.specialist}</option>
              <% SpecialistDao dao = new SpecialistDao(DBConnect.getConn()); 
                List<Specialist>list = dao.getAllSpecialist();
                		for(Specialist s:list)
                		{%>
                			<option><%=s.getSpecialistName() %></option>
                		<% }
                
                
                
              %>
               
               </select>
           </div>
           
           <div class="mb-3">
               <label class ="form-label">Email</label>
               <input type="text" readonly required name ="email" class= "form-control" value="${doctObj.email}">
           </div>
           
           <div class="mb-3">
               <label class ="form-label">Mob No</label>
               <input type="text" required name ="mobno" class= "form-control" value="${doctObj.mobno}">
           </div>
           
           <input type="hidden" name="id" value="${doctObj.id }">
           
           <button type="submit" class="btn-btn-primary">Update</button>
           
        </form>
	</div>
	</div>
</div>
					  
</div>
</div>				       
</body>
</html>