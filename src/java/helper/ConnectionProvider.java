
package helper;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;


public class ConnectionProvider {
    private static Connection con; 
    
    public static Connection getConnection(){
      if(con==null){
          
      
        try {
           Class.forName("org.sqlite.JDBC");
             con = DriverManager.getConnection("jdbc:sqlite:C:\\New Folder\\E-Commerce\\ecom.db");
         
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(ConnectionProvider.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(ConnectionProvider.class.getName()).log(Level.SEVERE, null, ex);
        }
      }
      return con;  
    }
    
}
