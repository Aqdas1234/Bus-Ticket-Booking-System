<!DOCTYPE html>
<html lang="en">

<head>
    
    <title>Add Route</title>


    <link rel="stylesheet" href="assets/styles/style.css">
  

</head>

<body style="   background: #e7e9ed;">
    
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

        <h2 align="center"> Welcome <%= session.getAttribute("name") %> </h2>

       <!-- <div class="ticketbook_conatainer add_route_wrapper">
            <div class="ticketbook_modernBus_img" >
                <img style="height:100%" src="assets/img/bus.jpg" alt="">
            </div>
            <div id="ticketbook_wrapper" class="ticketbook_wrapper payment_box add_route">
                <div class="sign_in_up_box_header passenger_data_header"> 
                    <h2>Add New Route</h2>
                </div>
                <form action="">
                    <h4>Enter Route No</h4>
                    <input type="text" id="fname" name="fname" placeholder="" required><br><br>

                    <h4>Start City</h4>
                    <input type="text" id="cname" name="cname" placeholder="from" required><br><br>

                    <h4>End City</h4>
                    <input type="text" id="ename" name="ename" placeholder="to" required><br><br>

                    <h4>Buses per Day</h4>
                    <input type="text" id="count" name="count" placeholder="Let 5 buses per Day" required><br><br>
                    <button type="submit" class="sbmt_btn">Next</button>
                </form>
            </div>
        </div>-->


        <div class="ticketbook_conatainer sign_in_up">
           
            <div id="ticketbook_wrapper " class="ticketbook_wrapper sign_in_up_box "  >
                <div class="sign_in_up_box_header">
                    <h2>Add New Route</h2>
                </div>
                <div class="sign_in_up_box_img">
                    <img src="assets\img\Route.png" alt="img">
                </div>
                
                
                
                <form onsubmit = "" action="addRoute" method ="post">
                    <h4>Enter Route No</h4>
                    <input type="text" id="rid" name="rid" placeholder="" required><br><br>

                    <h4>Start City</h4>
                    <input type="text" id="sname" name="sname" placeholder="from" required><br><br>

                    <h4>End City</h4>
                    <input type="text" id="ename" name="ename" placeholder="to" required><br><br>

                    <h4>Price</h4>
                    <input type="text" id="price" name="price" placeholder="Rs" required>
                    <br><br><br>
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