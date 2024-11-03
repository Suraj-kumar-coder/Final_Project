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
   
     <div class ="xx">  
       <div class="card point-card"> 
         <div class="card-body">
            <p class="fs-3 text-center">Add Doctor</p>
            <c:if test ="${not empty errorMsg }">
        <p class ="fs-3 text-center text-danger">${errorMsg}</p>
          <c:remove var= "errorMsg" scope ="session" />
     </c:if>
     
     <c:if test ="${not empty succMsg }">
        <p class ="fs-3 text-center text-danger">${succMsg}</p>
        <c:remove var= "succMsg" scope ="session" />
     </c:if>
        <form action ="../addDoctor" method="post">
           <div class="mb-2">
               <label class ="form-label">Full Name</label>
               <input type="text" required name ="fullname" class= "form-control">
           </div>
           
           
           <div class="mb-3">
               <label class ="form-label">DOB</label>
               <input type="date" required name ="dob" class= "form-control">
           </div>
           
           <div class="mb-3">
               <label class ="form-label">Qualification</label>
               <input type="text" required name ="qualification" class= "form-control">
           </div>
           
           <div class="mb-3">
               <label class ="form-label">Specialist</label>
               <select name="specialist" required class= "form-control">
              <option>--select--</option>
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
               <input type="text" required name ="email" class= "form-control">
           </div>
           
           <div class="mb-3">
               <label class ="form-label">Mob No</label>
               <input type="text" required name ="mobno" class= "form-control">
           </div>
           
           <div class="mb-3">
               <label class ="form-label">Password</label>
               <input type="password" required name ="password" class= "form-control">
           </div>
           
           <button type="submit" class="btn-btn-primary">submit</button>
           
        </form>
         </div>
       </div>
     </div>
       
       <div class ="col-md -4">  
       <div class="card point-card"> 
         <div class="card-body">
            <p class="fs-3 text-center"> Doctor Details</p>
            <c:if test ="${not empty errorMsgdel }">
        <p class ="fs-3 text-center text-danger">${errorMsgdel}</p>
        <c:remove var= "errorMsgdel" scope ="session" />
     </c:if>
     
     <c:if test ="${not empty succMsgdel }">
        <p class ="fs-3 text-center text-danger">${succMsgdel}</p>
        <c:remove var= "succMsgdel" scope ="session" />
     </c:if>
            <table class ="table">
            <thead>
               <tr>
                  <th scope ="col">Full Name</th>
                  <th scope ="col">DOB</th>
                  <th scope ="col">Qualification</th>
                  <th scope ="col">Specialist</th>
                  <th scope ="col">Email</th>
                  <th scope ="col">Mon No</th>
                  <th scope ="col">Action</th>
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
    			<td><a href="edit_doctor.jsp?id=<%=d.getId() %>" class="btn btn-sm btn-primary">Edit</a>
    			
    			<a href="../deleteDoctor?id=<%=d.getId() %>" class ="btn btn-sm btn-danger">Delete</a>
    			</td>
    			</tr>
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