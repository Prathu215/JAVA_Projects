
package database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class connection {

    public static void main(String[] args) {
    
         try
{
Class.forName("com.mysql,jdbc.Driver");
            try {
                Connection con =DriverManager.getConnection("jdbc:derby://localhost:3306/Statute","root","");
            } catch (SQLException ex) {
                Logger.getLogger(connect.class.getName()).log(Level.SEVERE, null, ex);
            }
System.out.println("connection successful");
}
catch(ClassNotFoundException e)
{
e.printStackTrace();
}
    }

}
