import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import javax.swing.*;


public class addBus extends HttpServlet {
  
  //Process the HTTP post request
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
	response.setContentType("text/html");
    
	// get PrintWriter object
	PrintWriter out = response.getWriter();
	
	String name=request.getParameter("dname");
	String number=request.getParameter("number");
    String route =request.getParameter("route");
	String type =request.getParameter("type");
	
	/*out.println("<html>");
    out.println("<head><title>Response</title></head>");
    out.println("<body bgcolor=\"#ffffff\">");*/
	
	try{

    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://127.0.0.1/ticket_system";

    Connection con=DriverManager.getConnection(url, "root", "root");

    Statement st=con.createStatement();
	 String query="Select * from addBus where number= '"+number+"' ";
   
     ResultSet rs = st.executeQuery( query );
   
     if(rs.next()){
			out.println("<h2 align= 'center'>These credentials are already in use</h2>");
		  RequestDispatcher dis=request.getRequestDispatcher("add_bus.jsp");          
          dis.include(request, response);  
	 }else{
			query="Select * from route where id= '"+route+"' ";
			rs = st.executeQuery( query );
		if(rs.next()){
     
      query = "INSERT INTO addBus(dname,number,type,route)VALUES('"+ name + "','" +number+ "','" +type+ "','" +route+ "') ";

     System.out.println(query);

     int rs1 = st.executeUpdate( query );
	    if(rs1==1){
			out.println("<h2 align= 'center'>Insertion successful</h2>");
			RequestDispatcher dis=request.getRequestDispatcher("company_serv.jsp");          
			dis.include(request, response);
		}
		else{	
			out.println("<h2 align= 'center'>Record could not be inserted.</h2>");
			RequestDispatcher dis=request.getRequestDispatcher("add_bus.jsp");          
			dis.include(request, response);
			}
	 }else
	 {
		out.println("<h2 align= 'center'>This Route is not available.</h2>");
			RequestDispatcher dis=request.getRequestDispatcher("add_bus.jsp");          
			dis.include(request, response);

	 }
	 }

           st.close();
           con.close();

    }catch(Exception e){

      out.println(e);
	  //out.println("<h1>User having Such credentials already exist</h1>"); 
    }


  }

}