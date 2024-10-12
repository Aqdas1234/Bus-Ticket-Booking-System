<%@ page import="java.sql.*" %>

<%@ page import="java.util.*" %>


<!DOCTYPE html>
<html lang="en">
<head>
    
    <title>Document</title>
</head>
<body>
    


<% 
HashMap<Integer,String> time = new HashMap<>(); 
    HashMap<String,String> map = new HashMap<>();

    int i=1;
    int j=0;

//session = request.getSession(false); // Don't create if not exists
String route1 =(String)session.getAttribute("route"); 
out.println(session.getAttribute("route"));

try{
 Class.forName("com.mysql.jdbc.Driver"); 

  String url = "jdbc:mysql://127.0.0.1/ticket_system";

 Connection con=DriverManager.getConnection(url,"root","root");

 Statement st=con.createStatement();
 
 String query="Select * from route where id='"+route1+"' "; 

 ResultSet rs = st.executeQuery( query );

 if(rs.next())
 {

    %>  <h1>Hello World </h1>
    <%
    String query1 = "Select * from routetiming where id = '"+route1+"' ";
    String query2 = "Select * from addbus where route = '"+route1+"' ";
    ResultSet r1 = st.executeQuery(query1);

    while(r1.next())
    {
       // out.println("test");
     time.put(i,r1.getString("time"));
    // out.println("saad");
     i++;
    }


    ResultSet r2 = st.executeQuery(query2);
    //out.println("aqdas");
   
   // out.println("aqdas2");

    while(r2.next())
    {

        %>

        <h2>Hello World</h2> <%
     map.put(r2.getString("number"),r2.getString("type"));
    }
   // out.println("aqdas3");

 }

 //out.println("aqdas4");

 st.close();
 con.close();
}
catch (SQLException e)
{
 %>
 
 <h3>SQL Exception </h3>
 
 <%
}

catch (Exception e)
{
 %>
 
 <h3>Some Error Occured </h3>
 
 <%
}
 
%>

<c:forEach var="entry" items="${map}">
  <p>Key: ${entry.key}</p>
  <p>Value: ${entry.value}</p>
</c:forEach>



</body>
</html>