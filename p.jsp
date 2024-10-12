  <% 
   session = request.getSession(false); // Don't create if not exists
 
%>

<!DOCTYPE html>
<html>
<head>
  <title>Bus Ticket Booking</title>
</head>
<body>
  <% if (session.getAttribute("role") == "user" ) { %>
    Welcome, <%= session.getAttribute("name") %>! <br>
	<% } else { %>
    Please login to access this page!
  <% } %>

    
</body>
</html>
