package admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import util.ConnectionUtil;

public class MemberDAO {
	
	// DB연결객체 Close
	private void close(ResultSet rs,PreparedStatement pstmt,Connection conn){
		if(rs != null) try{ rs.close(); }catch(SQLException e){}finally{ rs = null; }
		if(pstmt != null) try{ pstmt.close(); }catch(SQLException e){}finally{ pstmt = null; }
		if(conn != null) try{ conn.close(); }catch(SQLException e){}finally{ conn = null; }
	}
	
	private static MemberDAO instance = new MemberDAO();
	
	public MemberDAO(){}
	
	// 객체 리턴
	public static MemberDAO getInstance(){
		return instance;
	}
	
	public int userCheck(String id, String passwd){
		int check = 0;
		
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String SQL = "SELECT id, grade FROM member WHERE id = ? AND password = ? ";
		
		try{
			conn = ConnectionUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, id);
			pstmt.setString(2, passwd);
			rs = pstmt.executeQuery();
//			System.out.println("SQL = " + SQL);
//			System.out.println("id, pw : " +id+", "+passwd);
			if( rs.next() ){
				String grade = rs.getString("grade");
				if(!grade.equals("A")){
					check = 1;
				}
			}else{
				check = 2;
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close(rs,pstmt,conn);
		}
//		System.out.println("check =" +check);
		return check;
	}

}
