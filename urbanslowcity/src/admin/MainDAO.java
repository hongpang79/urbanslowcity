package admin;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;

import util.ConnectionUtil;
import board.BoardVO;

public class MainDAO {

	// DB연결객체 Close
	private void close(ResultSet rs,PreparedStatement pstmt,Connection conn){
		if(rs != null) try{ rs.close(); }catch(SQLException e){}finally{ rs = null; }
		if(pstmt != null) try{ pstmt.close(); }catch(SQLException e){}finally{ pstmt = null; }
		if(conn != null) try{ conn.close(); }catch(SQLException e){}finally{ conn = null; }
	}
	
	private static MainDAO instance = new MainDAO();
	
	public MainDAO(){}
	
	// 객체 리턴
	public static MainDAO getInstance(){
		return instance;
	}
	
	public Vector<MainBoardVO> selectMainBannerList(){
		Vector<MainBoardVO> banners = new Vector<MainBoardVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String SQL = "SELECT z.*, s.subject as board_subject FROM siteboard z, comboard s where z.board_no = s.num " +
	             "ORDER BY z.num ASC";
//			System.out.println("[MainDAO][selectMainBannerList] SQL = " + SQL);
		try{
			conn = ConnectionUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			
			if( rs.next() ){
				do{
					MainBoardVO banner = new MainBoardVO();
					banner.setNum(rs.getInt("num"));
					banner.setCategory(rs.getString("category"));
					banner.setSubject(rs.getString("subject"));
					banner.setImgUrl(rs.getString("img_url"));
					banner.setBoardNo(rs.getInt("board_no"));
					banner.setBoardSubject(rs.getString("board_subject"));
					banner.setDisplayStartDay(rs.getDate("display_start_day"));
					banner.setDisplayEndDay(rs.getDate("display_end_day"));
					banner.setUseYn(rs.getString("use_yn"));
					banners.add(banner);
				}while(rs.next());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close(rs,pstmt,conn);
		}
		return banners;
	}
	
	public Vector<MainBoardVO> selectMainBannerShow(){
		Vector<MainBoardVO> banners = new Vector<MainBoardVO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String SQL = "SELECT z.*, s.subject as board_subject FROM siteboard z, comboard s where z.board_no = s.num " +
	             "and z.use_yn='Y' ORDER BY z.num ASC";
//			System.out.println("[MainDAO][selectMainBannerShow] SQL = " + SQL);
		try{
			conn = ConnectionUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			
			if( rs.next() ){
				do{
					MainBoardVO banner = new MainBoardVO();
					banner.setNum(rs.getInt("num"));
					banner.setCategory(rs.getString("category"));
					banner.setSubject(rs.getString("subject"));
					banner.setImgUrl(rs.getString("img_url"));
					banner.setBoardNo(rs.getInt("board_no"));
					banner.setBoardSubject(rs.getString("board_subject"));
					banner.setDisplayStartDay(rs.getDate("display_start_day"));
					banner.setDisplayEndDay(rs.getDate("display_end_day"));
					banner.setUseYn(rs.getString("use_yn"));
					banners.add(banner);
				}while(rs.next());
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close(rs,pstmt,conn);
		}
		return banners;
	}
	
	public MainBoardVO getBanner(int num){
		MainBoardVO banner = new MainBoardVO();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String SQL = "SELECT z.*, s.subject as board_subject FROM siteboard z, comboard s where z.board_no = s.num " +
	             "and z.num = " + num;
//			System.out.println("[MainDAO][getBanner] SQL = " + SQL);
		try{
			conn = ConnectionUtil.getConnection();
			pstmt = conn.prepareStatement(SQL);
			rs = pstmt.executeQuery();

			
			if( rs.next() ){
				banner.setNum(rs.getInt("num"));
				banner.setCategory(rs.getString("category"));
				banner.setSubject(rs.getString("subject"));
				banner.setImgUrl(rs.getString("img_url"));
				banner.setBoardNo(rs.getInt("board_no"));
				banner.setBoardSubject(rs.getString("board_subject"));
				banner.setDisplayStartDay(rs.getDate("display_start_day"));
				banner.setDisplayEndDay(rs.getDate("display_end_day"));
				banner.setUseYn(rs.getString("use_yn"));
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close(rs,pstmt,conn);
		}
		return banner;
	}
	
	public void insertArticle(MainBoardVO article) throws Exception {
    	Connection conn = null;
        PreparedStatement pstmt = null;
    	ResultSet rs = null;
    	
    	int num=article.getNum();
		int number=0;
        String sql="";

        try {
        	conn = ConnectionUtil.getConnection();

            pstmt = conn.prepareStatement("select max(num) from siteboard");
			rs = pstmt.executeQuery();
			
			if(rs.next()){
		      number=rs.getInt(1)+1;
			}else{
		      number=1; 
			}
			System.out.println("[MainDAO][insertArticle] number = " + number);
			
            sql = "insert into siteboard(category,zone_no,subject,img_url,board_no,use_yn)";
		    sql+=" values(?,?,?,?,?,?)";

            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, article.getCategory());
            pstmt.setString(2, article.getZoneNo());
            pstmt.setString(3, article.getSubject());
            pstmt.setString(4, article.getImgUrl());
            pstmt.setInt(5, article.getBoardNo());
//			pstmt.setDate(6, (Date) article.getDisplayStartDay());
//			pstmt.setDate(7, (Date) article.getDisplayEndDay());
            pstmt.setString(6, article.getUseYn());
            int rtn = pstmt.executeUpdate();
            
            System.out.println("[MainDAO][insertArticle] rtn = " + rtn);
        } catch(Exception ex) {        	
            ex.printStackTrace();
        } finally {
			ConnectionUtil.close(conn, pstmt, rs);
        }
    }
	
	public String processBanner(HttpServletRequest request){
		String msg = "";
		int rtn = 0;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		String SQL = "";
		String step = request.getParameter("step");
		System.out.println("[MainDAO][processBanner] step = " + step);
		
		try{
			conn = ConnectionUtil.getConnection();
			int bannerNo = Integer.parseInt((String) request.getParameter("bannerNo"));
			System.out.println("[MainDAO][processBanner] bannerNo = " + bannerNo);
			if(step.equals("modify")){
				String useYn = request.getParameter("useYn");
				System.out.println("[MainDAO][processBanner] useYn = " + useYn);
				SQL = "UPDATE siteboard SET use_yn=? WHERE num = ? ";
				pstmt = conn.prepareStatement(SQL);
				pstmt.setString(1, useYn);
				pstmt.setInt(2, bannerNo);
								
				msg = "변경되었습니다.";
			
			}else if(step.equals("delete")){
				SQL = "DELETE FROM siteboard WHERE num=?";
				pstmt = conn.prepareStatement(SQL);
				pstmt.setInt(1, bannerNo);
				
				msg = "삭제되었습니다.";
			}
			rtn = pstmt.executeUpdate();
			if(rtn == 0){
				msg = "처리중 오류가 발생했습니다. 관리자에게 문의해 주세요!";
			}
			
		}catch(Exception e){
			e.printStackTrace();
		}finally{
			close(rs,pstmt,conn);
		}
		return msg;
	}

}