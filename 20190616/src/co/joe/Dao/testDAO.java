package co.joe.Dao;

import java.sql.Connection;

import javax.naming.Context;
import javax.naming.InitialContext;


import org.apache.tomcat.jdbc.pool.DataSource;

public class testDAO {

	DataSource ds;
	
	public testDAO()
	{
		try {
			Context context = new InitialContext();
			ds = (DataSource)context.lookup("java:comp.env/jdbc/myoracle");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		
	}

	
}
