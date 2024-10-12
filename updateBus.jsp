<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Update Bus Details</title>

    <link rel="stylesheet" href="assets/styles/style.css">

</head>
<body>
    <% if (session.getAttribute("role") == "company" ) { %>
    <div class="main_container">
        <div class="header">
            <div class="header_name">
                <a href="index.html" style="text-decoration:none ;"><h2>TRAVELL<span>.</span></h2></a>
            </div>
           <div class="header_nav">
                <ul>
                    <li><a href="company_serv.jsp">Services</a></li>
                    <li><form action ="logout" method="post"><button>logout</button></form></li>
                </ul>
            </div>
        </div>

        <h2 align="center"> Welcome <%= session.getAttribute("name") %> </h2>
        <div class="ticketbook_conatainer sign_in_up">
           
            <div id="ticketbook_wrapper " class="ticketbook_wrapper sign_in_up_box "  >
                <div class="sign_in_up_box_header">
                    <h2>Update Bus Detail</h2>
                </div>
                <div class="sign_in_up_box_img">
                    <img src="assets\img\add.png" alt="img">
                </div>

                <form action="busCheck" method="post">
                    <br>
                    <h4>Enter Number of Bus</h4>
                    <input type="text" id="number" name="number" placeholder="#123#" required><br><br>

                    
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