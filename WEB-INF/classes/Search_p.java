import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;


public class Search_p extends HttpServlet {

  //Process the HTTP Get request
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    
    PrintWriter out = response.getWriter();

    String email=request.getParameter("email1");
	String psd=request.getParameter("pwsd1");
    
    out.println("<html>");
    out.println("<head><title>Response</title></head>");
    out.println("<body bgcolor=\"#ffffff\">");


    try{
    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://127.0.0.1/ticket_system";

    Connection con=DriverManager.getConnection(url,"root","root");

    Statement st=con.createStatement();
    
     String query="Select * from passenger where email='"+email+"' ";
   
     ResultSet rs = st.executeQuery( query );
   
     if(rs.next()){
		//rs.next();
		
		if (psd.equals(rs.getString("password"))){
			
			HttpSession session = request.getSession();
			session.setAttribute("role","user");
			session.setAttribute("name", rs.getString("name"));
			session.setAttribute("email", rs.getString("email"));
			response.sendRedirect("passenger.jsp");
	   // out.println("<h1>Record found</h1>");

    	   /* String name = rs.getString("username");
    	    String address = rs.getString("address");

    	    out.println("<h1>User Name: "+name+" </h1>");
	    out.println("<h1>User Address: "+ address+ " </h1>");
			*/
	  }else{
			out.println("<h2 align='center'>Credentials do not match</h2>");
			RequestDispatcher dis=request.getRequestDispatcher("login.html");          
          dis.include(request, response);
          }
     }else
	{
		out.println("<h2 align='center'>No Record found. SignUp First</h2>");
		 RequestDispatcher dis=request.getRequestDispatcher("login.html");          
          dis.include(request, response);
	}
     


//			out.println("</body></html>");
           st.close();
           con.close();

    }catch(Exception e){

      out.println(e);
    }

  }

}
