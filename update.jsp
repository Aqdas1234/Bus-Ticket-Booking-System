<!DOCTYPE html>
<html lang="en">

<head>
    
    <title>Add Bus</title>


    <link rel="stylesheet" href="assets/styles/style.css">
   <script >
   
	
		function validate()
		{
			let flag1 =false;
			

            var radios = document.querySelectorAll('input[name="type"]');
            for (var i = 0; i < radios.length; i++) {
            if (radios[i].checked) {
                document.getElementById("typeErr").innerHTML = "";
				flag1 = true;
                break; // Exit the loop if a checked radio is found
            }
            }
				
			
			return flag1;
		}
   </script>

</head>

<body style="  background: #ace5ee;">
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
                    <h2>Add New Bus Data</h2>
                </div>
                <div class="sign_in_up_box_img">
                    <img src="assets\img\add.png" alt="img">
                </div>
                
                
                
                <form onsubmit="return validate()" action="update" method ="post">
                    
                        <h4>Driver Name</h4>
                        </label>
                        <input type="text" id="dname"  name="dname" placeholder="jhon doe" required>
                        <span style="color:red" id="NameErr" ></span><br><br>

                        

                        <label for="">
                            <h4>Assign Route Number</h4>
                        </label>
                        <input type="text" id="route" name="route" placeholder="" required >
                       
                        <br><br>
    
                        <h4 >
                            <input type="radio"  class="ali" id ="type" name="type"  value="executive" >
                            <label for="executive">Executive
                            </label>
                        </h4>

                        <h4 >
                            <input type="radio" class="ali" id ="type"  name="type"  value="business">
                            <label for="business">Business
                            </label>
                        </h4>

                        <h4 >
                            <input type="radio" class="ali"  id ="type" name="type"  value="economy">
                            <label for="economy">Economy
                            </label>
                        </h4>
                            <br> <br>
                        <button style="margin-left:30%" type= "submit" class="sbmt_btn"><a>Add</a></button><br>
                       <br>
                       <span  style="color:red;margin-left:30%" id="typeErr" ></span>

                </form>
                <br>
               
            </div>   
        </div> 

    </div>
	
	<% } else { %>
    Please login to access this page!
  <% } %>
	
</body>

</html>