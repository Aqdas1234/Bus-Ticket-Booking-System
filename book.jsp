<%@ page import="java.sql.*" %>

<%@ page import="java.util.*" %>

<% HashMap<Integer,String> time = new HashMap<>(); 
    HashMap<String,String> map = new HashMap<>();

    int i=1;
    int j=0;
     %>


<%
session = request.getSession(false); // Don't create if not exists
String id =(String)session.getAttribute("route"); %>

<html>
    <head>
        <title>Book Your Ticket</title>
        <link rel="stylesheet" href="assets\styles\style.css">
        <script>
            function addin(f)
            {
              //  session.setAttribute("type",)
            }
        </script>

    </head>

    <body>

        <% if (session.getAttribute("role") == "user" ) { %>
            <div class="main_container">
                <div class="header ">
                    <div class="header_name">
                        <a href="index.html" style="text-decoration:none ;"><h2>TRAVELL<span>.</span></h2></a>
                        
                    </div>
                
                <div class="header_nav">
                        <ul>
                            <li><a href="passenger.jsp">Services</a></li> 
                            <li><form action ="logout" method="post"><button>logout</button></form></li>
                        </ul>
                </div>
            </div>
                
                <h2 align="center"> Welcome <%= session.getAttribute("name") %> </h2>



     <%
   try{
    Class.forName("com.mysql.jdbc.Driver"); 

     String url = "jdbc:mysql://127.0.0.1/ticket_system";

    Connection con=DriverManager.getConnection(url,"root","root");

    Statement st=con.createStatement();
    
    String query="Select * from route where id='"+id+"'"; 
   
    ResultSet rs = st.executeQuery( query );

    if(rs.next())
    {
       String query1 = "Select * from routetiming where id ='"+id+"' ";
       String query2 = "Select * from addbus where route='"+id+"'";
       ResultSet r1 = st.executeQuery(query1);

       while(r1.next())
       {
        time.put(i,r1.getString("time"));
        i++;
       }

       ResultSet r2 = st.executeQuery(query2);

       

       while(r2.next())
       {
        map.put(r2.getString("number"),r2.getString("type"));
       }

    }


    st.close();
    con.close();
   }catch (Exception e)
   {
    %> Some Error Occured <%
   }
    
%>




<div class="ticketbook_conatainer sign_in_up">
           
    <div id="ticketbook_wrapper " class="ticketbook_wrapper sign_in_up_box "  >
        <div class="sign_in_up_box_header">
            <h2>Available Route Timings and Price </h2>
        </div>

    

     <%
    for (String key : map.keySet()) {
       for(int timekey :time.keySet()){

            
        %> 

    <form onsubmit=""  action="ticket" method="post">
        <!-- <h1>Hello World </h1> -->

       
        <h3 name="busClass" id="busClass">Bus Class : <%= map.get(key) %>        </h3> 
        <% String className = map.get(key); 
        if (map.get(key).equals( "business")) { %>

        <h3 id="namePrice"> Price : <%= Integer.parseInt((String)session.getAttribute("price"))+200 %>    </h3> 
        
        <% }else { %>
        
            <h3 name="busPrice">Price : <%= session.getAttribute("price") %>    </h3> 
            <% } %>
            
            
        <input type="hidden"   id="nameInput" name="nameInput" value="" >

        <h3 name="busTime" id="busTime">Time :  <%= time.get(timekey) %> </h3>
        
        <input type="hidden" name="timeInput" id="timeInput" value="">   
       

        

        <button type="submit" class="sbmt_btn" onclick="document.getElementById('nameInput').value = document.getElementById('busClass').innerHTML;document.getElementById('timeInput').value = document.getElementById('busTime').innerHTML">Book Now</button>


        <br> <br>
        <hr>
    </form>
    
    <%
    j++;
    }
  }
    %>

</div>
</div>

</div>


<% } 
    else { %>
    Please login to access this page!
  <% } %>
        
    </body>
</html>