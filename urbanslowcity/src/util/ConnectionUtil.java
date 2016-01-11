package util;


import java.sql.*;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

public class ConnectionUtil {
	
//	private static DataSource ds = null;
	
	
	private ConnectionUtil(){}
		
	static{
		
		
//		try {
//			Context initContext = new InitialContext();
//			Context envContext  = (Context)initContext.lookup("java:/comp/env");
//			ds = (DataSource)envContext.lookup("jdbc/urbanSql");
			
			
			
//		} catch (NamingException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
		
	}
	
	public static Connection getConnection() throws SQLException{
//		String url = "jdbc:mysql://localhost:3306/urbanslowcity";
//		String id = "urbanslowcity";
//		String password = "slowcity5457";
		String url = "jdbc:mysql://localhost:3306/urban";
		String id = "urban";
		String password = "slowcity";
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
//			System.out.println("Driver is load");
			con = DriverManager.getConnection(url, id, password);
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return con;
//		return ds.getConnection();
	}


	public static void close(Connection conn, Statement pstmt, ResultSet rs)
	{
		try {
			rs.close(); pstmt.close(); conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}
	
	
	
	public static void close(Connection conn,Statement pstmt)
	{
		try {
		 pstmt.close(); conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} 
	}

}
