
<%@page import ="com.db.DBConnect" %>
<%@page import ="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Index page</title>

<%@include file="component/allcss.jsp" %>
<style type="text/css">
.point-card {
  box-shadow :0 0 20px 0 rgba(0,0,0.3);
}

</style>
</head>

<body>

<%@include file="component/Navbar.jsp" %>





<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-indicators">
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
  </div>
  <div class="carousel-inner">
    <div class="carousel-item active">
      <img src="image/doc1.jpg" class="d-block w-100" alt="..." height="700px">
    </div>
    <div class="carousel-item">
      <img src="image/doc2.jpg" class="d-block w-100" alt="..." height="700px">
    </div>
    <div class="carousel-item">
      <img src="image/doc3.jpg" class="d-block w-100" alt="..." height="700px">
    </div>
  </div>
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>
   
   <div class="container p-5">
       <p class="text-cenetr fs-2"> KEY FEATURE OF OUR HOSPITAL </p>
       
        <div class ="row">
          <div class="col-md-6"> 
            <div class="row">
             <div class="col-md-6">
              <div class="card point-card">
               <div class="card-body">
                <p class="fs-5">100% safety</p>
                 <p>Loreum ipsum dolar sit amet, consectetur adipsicing elit
                     Volputatem, inventore</p>
               
               </div>
              </div>
             </div>
             <div class="col-md-6">
               <div class="card point-card">
                <div class="card-body">
                 <p class="fs-5">Clean Environment</p>
                  <p>Loreum ipsum dolar sit amet, consectetur adipsicing elit
                     Volputatem, inventore</p>
                </div>
               </div>
              </div>
                <div class="col-md-6 mt-2">
                 <div class="card point-card">
                   <div class="card-body">
                     <p class="fs-5">Friendly Doctor</p>
                      <p>Loreum ipsum dolar sit amet, consectetur adipsicing elit
                     Volputatem, inventore</p>
                   </div>
                 </div>
                </div>
                   <div class="col-md-6 mt-2">
                 <div class="card point-card">
                   <div class="card-body">
                      <p class="fs-5">Experience Doctor</p>
                      <p>Loreum ipsum dolar sit amet, consectetur adipsicing elit
                     Volputatem, inventore</p>
               </div>
               </div>
              </div>
            </div>
            </div>
             <div class ="col-md-6 mt-4">
               <img src="image/doc4.jpg" height="500px" >
              </div>
           </div> 
   
   </div>
   
   <hr>
   
    <div class="container p-2">
       <p class="text-cenetr fs-2" style="text-align:center; font-weight:500px; font-family:algebrian"> OUR TEAM  </p>
        
         <div class="row">
             <div class="col-md-3">
              <div class="card point-card">
               <div class="card-body text-center">
               <img src="image/doc5.jpg" width="250px" height="300px">
               <p class="fw-bold fs-5">Samuani simi</p>
               <p class ="fs-7">(CEO & chairman)</p>
           </div>    
         </div>
        </div>
        
         <div class="col-md-3">
              <div class="card point-card">
               <div class="card-body text-center">
                <img src="image/doc6.jpg" width="250px" height="300px">
               <p class="fw-bold fs-5">Dr. siva kumar</p>
               <p class ="fs-7">(Chief doctor)</p>
            </div>
          </div>
          </div>
          
           <div class="col-md-3">
              <div class="card point-card">
               <div class="card-body text-center">
                <img src="image/doc7.jpg" width="250px" height="300px">
               <p class="fw-bold fs-5">Dr. Niuise Paule </p>
               <p class ="fs-7">(Chief doctor)</p>
            </div>
          </div>
          </div>
          
          <div class="col-md-3">
              <div class="card point-card">
               <div class="card-body text-center">
                <img src="image/doc8.jpg" width="250px" height="300px">
               <p class="fw-bold fs-5">Dr. Mathue Samuel </p>
               <p class ="fs-7">(Chief doctor)</p>
            </div>
          </div>
          </div>
          
          
          
           
          
       </div>
    </div>
   





<%@include file="component/footer.jsp" %>
	
</body>
</html>