import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import javax.swing.*;


public class busCheck extends HttpServlet {
  
  //Process the HTTP post request
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
	response.setContentType("text/html");
    
	// get PrintWriter object
	PrintWriter out = response.getWriter();
	
	String number=request.getParameter("number");

    
	try{

    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://127.0.0.1/ticket_system";

    Connection con=DriverManager.getConnection(url, "root", "root");

    Statement st=con.createStatement();
	 String query="Select * from addBus where number= '"+number+"' ";
   
     ResultSet rs = st.executeQuery( query );
     if(rs.next()){
       // out.println("<h2 align= 'center'>These credentials are already in use</h2>");
        HttpSession session = request.getSession(false);
        session.setAttribute("number",number);

		  RequestDispatcher dis=request.getRequestDispatcher("update.jsp");          
          dis.include(request, response);  
     }else{
         out.println("<h2 align= 'center'>No Record Found Against this Number</h2>");

		  RequestDispatcher dis=request.getRequestDispatcher("updateBus.jsp");          
          dis.include(request, response); 

     }
          st.close();
           con.close();

    }catch(Exception e){

      out.println(e);
	  //out.println("<h1>User having Such credentials already exist</h1>"); 
    }


  }
}