<!DOCTYPE html>
<html lang="en">
<head>
   
    <title>Passenger Services</title>
    <link rel="stylesheet" href="assets/styles/style.css">
    
</head>
<body >

	<% if (session.getAttribute("role") == "user" ) { %>
    <div class="main_container">
        <div class="header ">
            <div class="header_name">
                <a href="index.html" style="text-decoration:none ;"><h2>TRAVELL<span>.</span></h2></a>
				
            </div>
        <div class="header_nav">
                <ul>
                   <!-- <li><a href="passenger.jsp">Services</a></li> -->
                    <li><form action ="logout" method="post"><button>logout</button></form></li>
                </ul>
            </div>
        </div>
		
		<h2 align="center"> Welcome <%= session.getAttribute("name") %> </h2>
		
		
		
        <div id="passengers_wrapper" class="passengers_wrapper" >
            <div class="customize_ticket passenger_page_div_container" action="">
                <a href="ticketbook.jsp">
                    <div class="ticket_img passenger_page_img_container">
                        <img src="assets/img/ticket1.png" alt="">
                    </div>
                    <h1>Book <span>Your</span> Ticket</h1>
                </a>
            </div>
            <div class="routes_list passenger_page_div_container">
                <a href="routes.html">
                    <div class="route_img passenger_page_img_container">
                        <img src="assets/img/Route.png" alt="">
                    </div>
                    <h1>Routes</h1>
                </a>
            </div>
            
            

        </div>
    </div>
	<% } else { %>
    Please login to access this page!
  <% } %>
</body>
</html>