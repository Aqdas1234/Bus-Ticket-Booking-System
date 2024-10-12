import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import javax.swing.*;


public class Insert_p extends HttpServlet {
  
  //Process the HTTP Get request
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
	response.setContentType("text/html");
    
	// get PrintWriter object
	PrintWriter out = response.getWriter();
	
	String name=request.getParameter("fname");
    String email =request.getParameter("email");
	String password =request.getParameter("pwsd");

	try{

    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://127.0.0.1/ticket_system";

    Connection con=DriverManager.getConnection(url, "root", "root");

    Statement st=con.createStatement();
    
     String query="Select * from passenger where email='"+email+"' ";
   
     ResultSet rs = st.executeQuery( query );
   
     if(rs.next()){
			out.println("<h2 align= 'center'>This email is already in use</h2>");
		  RequestDispatcher dis=request.getRequestDispatcher("signup.html");          
          dis.include(request, response);  
	 }else
	 {
		 query = "INSERT INTO passenger(name,email,password)VALUES('"+ name + "','" +email+ "','" +password+ "') ";
		System.out.println(query);
		int rslt = st.executeUpdate( query );
	    if(rslt==1){
			out.println("<h2 align= 'center'>Insertion successful</h2>");
			RequestDispatcher dis=request.getRequestDispatcher("login.html");          
			dis.include(request, response);
 		}
		else{
			out.println("<h2 align= 'center'>Record could not be inserted.</h2>"); 
			RequestDispatcher dis=request.getRequestDispatcher("signup.html");          
			dis.include(request, response); 
		}
	 }
		 st.close();
           con.close();
     
	}//else{
		//out.println("<h1>User having Such credentials already exist</h1>"); 
	//}


    catch(Exception e){
		out.println(e);

     // out.println("<h1>User having Such credentials already exist</h1>"); 
    }
	
	/*finally{
			out.println("</body></html>");
          
	}*/

  }

}