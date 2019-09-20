package co.joe.Dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Dao 
{
	   private String driver="oracle.jdbc.driver.OracleDriver";
	   private String url="jdbc:oracle:thin:@localhost:1521:xe";
	   private String user="hr";
	   private String password="hr";
	   
	   Connection conn;
	   
	   public Dao()
	   {
		   try {
			Class.forName(driver);
			try {
				conn = DriverManager.getConnection(url,user,password);
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		   
	   }
	

}
