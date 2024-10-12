<!DOCTYPE html>
<html lang="en">

<head>
    
    <title>Passenger</title>


    <link rel="stylesheet" href="assets/styles/style.css">
    

</head>

<body style="   background: #e7e9ed;">

    <% if (session.getAttribute("role") == "user" ) { %>

    <div class="main_container">
        <div class="header">
            <div class="header_name">
                <a href="index.html" style="text-decoration:none ;">
                    <h2>TRAVELL<span>.</span></h2>
                </a>
            </div>

            <div class="header_nav">
                <ul>
                    <li><a href="passenger.jsp">Services</a></li>
                    <li><form action ="logout" method="post"><button>logout</button></form></li>
                </ul>
            </div>
        </div>

     <!--   <div class="ticketbook_conatainer">
            <div class="ticketbook_modernBus_img">
                <img src="assets/images/Book_your_ticket/modern_bus.jpg" alt="">
            </div>
            <div id="ticketbook_wrapper" class="ticketbook_wrapper">
                <div>
                    <h1>Book Your Ticket</h1>
                </div>
                <form action="">
                    <h4>Enter Your Current City</h4>
                    <input type="text" id="fname" name="fname" placeholder="from"><br><br>

                    <h4>Destination</h4>
                    <input type="text" id="lname" name="lname" placeholder="to"><br><br>

                    <h4>Date</h4>
                    <input type="text" id="lname" name="lname" placeholder="dd/mm/yy"><br><br>
                    <a href="search_bus.html">Next</a>
                </form>
            </div>
        </div>-->


        <div class="ticketbook_conatainer sign_in_up">
           
            <div id="ticketbook_wrapper " class="ticketbook_wrapper sign_in_up_box "  >
                <div class="sign_in_up_box_header">
                    <h2>Book Your Ticket</h2>
                </div>
                <div class="sign_in_up_box_img">
                    <img src="assets\img\ticket1.png" alt="img">
                </div>

                <form action="routeCheck" method="post">
                    <h4>Enter Your Departure City</h4>
                    <input type="text" id="sname" name="sname" placeholder="from" required><br><br>

                    <h4>Destination</h4>
                    <input type="text" id="dname" name="dname" placeholder="to" required><br><br>

                    <h4>Date</h4>
                    <input type="text" id="date" name="date" placeholder="dd/mm/yy" required><br><br>
                    <button style="margin-left:30%" type= "submit" class="sbmt_btn"><b>Enter</b></button>
                </form>


            </div>
        </div>
    </div>

    <% } else { %>
        Please login to access this page!
      <% } %>
    
    
</body>

</html>