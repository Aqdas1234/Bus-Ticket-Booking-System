import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import javax.swing.*;


public class update extends HttpServlet {
  
  //Process the HTTP post request
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
	response.setContentType("text/html");
    
	// get PrintWriter object
	PrintWriter out = response.getWriter();
	
	String dname=request.getParameter("dname");
    String route=request.getParameter("route");
    String type=request.getParameter("type");

    HttpSession session = request.getSession(false);
    String number=(String)session.getAttribute("number");
    
	try{

    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://127.0.0.1/ticket_system";

    Connection con=DriverManager.getConnection(url, "root", "root");

    PreparedStatement ps = con.prepareStatement("SELECT * FROM route WHERE id = ?");
                ps.setString(1, route); // Use route parameter
       ResultSet     rs = ps.executeQuery();
    // rs = st.executeQuery( query );
    if(rs.next()){

	 ps = con.prepareStatement("UPDATE addBus SET dname = ?, type = ?, route = ? WHERE number = ?");
        ps.setString(1, dname);
        ps.setString(2, type);
        ps.setString(3, route);
        ps.setString(4, number);
        int rs1 = ps.executeUpdate();
     if(rs1==1){
        out.println("<h2 align= 'center'>updated</h2>");
        
        //session.setAttribute("number",number);

		  RequestDispatcher dis=request.getRequestDispatcher("company_serv.jsp");          
          dis.include(request, response);  
     }else{
         out.println("<h2 align= 'center'>Could not Update </h2>");

		  RequestDispatcher dis=request.getRequestDispatcher("update.jsp");          
          dis.include(request, response); 

     }
    }else{
        out.println("<h2 align= 'center'>this route is no available </h2>");

		  RequestDispatcher dis=request.getRequestDispatcher("update.jsp");          
          dis.include(request, response); 
    }
          ps.close();
           con.close();

    }catch(Exception e){

      out.println(e);
	  //out.println("<h1>User having Such credentials already exist</h1>"); 
    }


  }
}