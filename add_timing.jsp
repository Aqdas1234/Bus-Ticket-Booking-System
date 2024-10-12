<!DOCTYPE html>
<html lang="en">

<head>
    
    <title>Add Timing</title>
    <link rel="stylesheet" href="assets/styles/style.css">
   

</head>

<body style=" background: #ace5ee;">
    <% if (session.getAttribute("role") == "company" ) { %>

    <div class="main_container">
        <div class="header">
            <div class="header_name">
                <a href="index.html" style="text-decoration:none ;"><h2>TRAVELL<span>.</span></h2></a>
            </div>
            <div class="header_nav">
                <ul>
                    <li><a href="company_serv.jsp">Service</a></li>
                    <li><form action ="logout" method="post"><button>logout</button></form></li>
                </ul>
            </div>
        </div>

        <h2 align="center"> Welcome <%= session.getAttribute("name") %></h2>

     <!--   <div class="ticketbook_conatainer sign_in_up payment add_bus_timing">

            <div id="ticketbook_wrapper " class="ticketbook_wrapper payment_box add_bus_timing_box">
                <div class="sign_in_up_box_header">
                    <h2>Add Time </h2>
                </div>
                
                <form action="">

                    <h4>1st Drive</h4>
                    <input type="text" id="time1" name="time1" placeholder="00:00-00:00" required><br><br>
                    
                    <h4>2nd Drive</h4>
                    <input type="text" id="time2" name="time2" placeholder="00:00-00:00" required><br><br>

                    <h4>3rd Drive</h4>
                    <input type="text" id="time3" name="time3" placeholder="00:00-00:00" required><br><br>
                    
                    

                </form>
            </div>



            <div id="ticketbook_wrapper" class="ticketbook_wrapper payment_box add_bus_timing_box">
                <div class="sign_in_up_box_header">
                    <h2>Add Route No</h2>
                </div>
                
                <form action="">

                   
                    

                    <h4>Route No</h4>
                    <input type="text" id="route2" name="route2" placeholder="" required><br><br>
                    

                    <h4>Route No</h4>
                    <input type="text" id="route3" name="route3" placeholder="" required><br><br>
                    

                    
                    
                </form>
            </div>

            <div id="ticketbook_wrapper" class="ticketbook_wrapper payment_box add_bus_timing_box">
                <div class="sign_in_up_box_header">
                    <h2>Price</h2>
                </div>
               
                <form action="">
                    
                    <h4>Price</h4>
                    <input type="text" id="price1" name="price1" placeholder="1234" required><br><br>

                    <h4>Price</h4>
                    <input type="text" id="price2" name="price2" placeholder="1234" required><br><br>

                    <h4>Price</h4>
                    <input type="text" id="price3" name="price3" placeholder="1234" required><br><br>

                    

                </form>
                
            </div>    
            </div>
        </div>
			<div style="margin-top:42%;margin-left:37%;width:30%">
                <button href=""class="sbmt_btn">Done</button>
            </div>-->


            <div class="ticketbook_conatainer sign_in_up">
           
                <div id="ticketbook_wrapper " class="ticketbook_wrapper sign_in_up_box "  >
                    <div class="sign_in_up_box_header">
                        <h2>Add New Route</h2>
                    </div>
                    <div class="sign_in_up_box_img">
                        <img src="assets\img\clock.png" alt="img">
                    </div>
                    
                    
                    
                    <form onsubmit = "" action="addTiming" method ="post">

                       
                    
    
                    
                        <h4>Route No</h4>
                        <input type="text" id="route" name="route" placeholder="" required><br><br>

                        <h4>Departure Time</h4>
                        <input type="text" id="time" name="time" placeholder="00:00" required><br><br>

                        
                        
                     
                        <button type="submit" class="sbmt_btn">Add</button>
    
    
                    </form>
    
    
                </div>
            </div>

    </div>

    <% } else { %>
        Please login to access this page!
      <% } %>
    
</body>

</html>