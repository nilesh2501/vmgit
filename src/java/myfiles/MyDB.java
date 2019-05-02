package myfiles;

import java.sql.*;
public class MyDB {
    
    public static Connection connect() throws Exception
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql://localhost/demo","root","google2018");
        return con;
    }
}
