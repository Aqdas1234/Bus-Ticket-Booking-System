import javax.servlet.*;
import javax.servlet.http.*;
import java.io.*;
import java.sql.*;
import javax.swing.*;


public class logout extends HttpServlet {
  
  //Process the HTTP post request
  public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  
	response.setContentType("text/html");
    PrintWriter out = response.getWriter();

    HttpSession session = request.getSession();
    //out.print("<h1>hello</h1>");
    session.invalidate();
    response.sendRedirect("index.html");

  }
}