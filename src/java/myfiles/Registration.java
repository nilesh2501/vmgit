package myfiles;

import myfiles.MyDB;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
public class Registration extends HttpServlet {
    Connection con; PreparedStatement ps;
    @Override
    public void init()
    {
        try{
        String qr="insert into registration values(?,?,?,?,?,?)";            
        con=MyDB.connect();
        ps=con.prepareStatement(qr);        
        }catch(Exception e){}
    }
    @Override
    public void destroy(){
        try{
            con.close();
        }catch(Exception e){}
    }
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String fname=request.getParameter("firstname");
        String lname=request.getParameter("lastname");
        String cname=request.getParameter("company");
        String mail=request.getParameter("email");
        String mobile=request.getParameter("phone");
        String pass=request.getParameter("passwd");
        
         
        
        try{
        ps.setString(1,fname);
        ps.setString(2,lname);
        ps.setString(3,cname);
        ps.setString(4,mail);
        ps.setString(5,mobile);
        ps.setString(6,pass);
        
        ps.executeUpdate();

        out.println("<html><head></head>");
            out.println("<body bgcolor=Gray>");
                    out.println("<h1>");
                    out.println("user Registration is Successfull");
                    out.println("</h1>");
                    out.println("<hr>");
                    out.println("<a href=Signup.jsp>Registration Form</a>");
                   out.println("<hr>");
            out.println("</body>");
            out.println("</html>");
        }
        catch(Exception ex)
        {
            out.println(ex);
        }
        
        
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}