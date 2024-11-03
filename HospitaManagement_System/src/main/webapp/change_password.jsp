<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
   <%@page isELIgnored="false"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.paint-card {
  box-shadow :0 0 20px 0 rgba(0,0,0.3);
}
h3{
color:red;
}

</style>
</head>
<%@include file="../component/allcss.jsp" %>
<body>
		
		 <%@include file="component/Navbar.jsp"%>
		 
		  <div class="container p-4 ">
			<div class="row">
				<div class="col-md-4 offset-md-4">
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
							   <form action ="user_Change_Password" method ="post">
							       <div class="mb-3">
							        <label>Enter new password</label>
							        <input type="text" name="newpassword" class="form-control" required>
							       </div>
							       
							       <div class="mb-3">
							        <label>Enter  old password</label>
							        <input type="text" name="oldpassword" class="form-control" required>
							       </div>
							       <input type="hidden" value="${userObj.id }" name="uid">
							       <button class=" btn btn-success col-md-12">Change Password</button>
							     </form>
							 </div>
						</div>
					</div>
				</div>
			</div>
							
</body>
</html>