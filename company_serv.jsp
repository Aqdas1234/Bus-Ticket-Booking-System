<!DOCTYPE html>
<html lang="en">
<head>
  
    <title>Company Services</title>
    <link rel="stylesheet" href="assets/styles/style.css">
   
</head>
<body >

	<% if (session.getAttribute("role") == "company" ) { %>
    <div class="main_container">
        <div class="header ">
            <div class="header_name">
                <a href="index.html" style="text-decoration:none ;"><h2>TRAVELL<span>.</span></h2></a>
            </div>
            <div class="header_nav">
                <ul>
                  <!--  <li><a href="main.html">Home</a></li>-->
                  <li><form action ="logout" method="post"><button>logout</button></form></li>
                </ul>
            </div>	
        </div>
		
		<h2 align="center"> Welcome <%= session.getAttribute("name") %> </h2>
		
        <div id="passengers_wrapper" class="passengers_wrapper">
		
		<div class="complaints passenger_page_div_container">
                <a href="add_bus.jsp">
                    <div class="complaints_img passenger_page_img_container">
                        <img src="assets/img/add_b.png" alt="">
                    </div>
                    <h1>Add Buses</h1>
                </a>
            </div>
            
            <div class="routes_list passenger_page_div_container">
                <a href="addRoute.jsp">
                    <div class="route_img passenger_page_img_container">
                        <img src="assets/img/Route.png" alt="">
                    </div>
                    <h1>Add Route</h1>
                </a>
            </div>
            
            
            
            <div class="complaints passenger_page_div_container">
                <a href="updateBus.jsp">
                    <div class="complaints_img passenger_page_img_container">
                        <img src="assets/img/add.png" alt="">
                    </div>
                    <h1>Update Bus Details</h1>
                </a>
            </div>
           
            
            
            
            <div class="complaints passenger_page_div_container">
                <a href="add_timing.jsp">
                    <div class="complaints_img passenger_page_img_container">
                        <img src="assets/img/clock.png" alt="">
                    </div>
                    <h1>Update Timings </h1>
                </a>
            </div>

        </div>
    </div>
	<% } else { %>
    Please login to access this page!
  <% } %>
</body>
</html>