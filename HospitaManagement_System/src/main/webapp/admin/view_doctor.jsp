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
<%@ include file="../component/allcss.jsp" %>

<style type="text/css">
.point-card {
  box-shadow :0 0 20px 0 rgba(0,0,0.3);
}

.xx{
width:430px;
}


</style>
</head>
<body>
<%@include file="navbar.jsp" %>
   
   <div class="container-fluid p-3">
   <div class ="row">
   

       
       <div class ="col-md -12">  
       <div class="card point-card"> 
         <div class="card-body">
            <p class="fs-3 text-center"> Doctor Details</p>
            <table class ="table">
            <thead>
               <tr>
                  <th scope ="col">Full Name</th>
                  <th scope ="col">DOB</th>
                  <th scope ="col">Qualification</th>
                  <th scope ="col">Specialist</th>
                  <th scope ="col">Email</th>
                  <th scope ="col">Mon No</th>
<!--                   <th scope ="col">Action</th> -->
                </tr> 
            </thead>
            <tbody>
            
            <%
            DoctorDao dao2 = new DoctorDao(DBConnect.getConn());
            
            List<Doctor>lists = dao2.getAllDoctor();
    		for(Doctor d:lists)
    		{%>
    			<tr>
    			<td><%= d.getFullname()%></td>
    			<td><%= d.getDob() %></td>
    			<td><%= d.getQualification() %></td>
    			<td><%= d.getSpecialist() %></td>
    			<td><%= d.getEmail() %></td>
    			<td><%= d.getMobno() %></td>
 <!--   			<td><a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary">Edit</a>
    			
    			<a href="#" class ="btn btn-sm btn-danger">Delete</a>
    			</td>
    			</tr> -->
    		<%}
    		
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