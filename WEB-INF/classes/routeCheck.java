import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;


public class routeCheck extends HttpServlet {

  //Process the HTTP Get request
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    response.setContentType("text/html");
    PrintWriter out = response.getWriter();

    String start1=request.getParameter("sname");
	String end1=request.getParameter("dname");
    String date=request.getParameter("date");

    //session.setAttribute("date",date);

    try{
    Class.forName("com.mysql.jdbc.Driver");

    String url = "jdbc:mysql://127.0.0.1/ticket_system";

    Connection con=DriverManager.getConnection(url,"root","root");

    Statement st=con.createStatement();
    
    String query="Select * from route where start='"+start1+"'and end='"+end1+"' ";
   
    ResultSet rs = st.executeQuery( query );
   
    if(rs.next()){
        HttpSession session = request.getSession(false);
        session.setAttribute("date ",date);
        session.setAttribute("start ",start1);
        session.setAttribute("end ",end1);
        session.setAttribute("price",rs.getString("price"));
        session.setAttribute("route",rs.getString("id"));
       // out.println(rs.getString("id"));
        RequestDispatcher dis=request.getRequestDispatcher("book.jsp");          
          dis.include(request, response); 
    }else{
        out.println("<h2 align='center'>Sorry this route is not Available</h2>");
        RequestDispatcher dis=request.getRequestDispatcher("ticketbook.jsp");          
          dis.include(request, response); 
    }

        st.close();
        con.close();

    }catch(Exception e){

      out.println(e);
    }




  }
}