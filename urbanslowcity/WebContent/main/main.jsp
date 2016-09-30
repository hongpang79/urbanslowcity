<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="admin.PopupVO" %>
<%@ page import="admin.CommonDAO" %>
<%@ page import="admin.MainBoardVO" %>
<%@ page import="admin.MainDAO" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<TITLE>Urban Slow City </TITLE>
	<link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/images/favicon.png" type="image/x-icon" />
	<link rel="apple-touch-icon" href="/images/apple-touch-icon.png" />
	<link rel='stylesheet' type='text/css' href='/css/company.css'>
	<link href="/css/main.css" rel="stylesheet" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	
	<script type="text/javascript" src="/js/main.js"></script>
	<!-- FlexSlider -->
	<script type="text/javascript" src="/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
	<script type="text/javascript">
	
//	if(-1 != navigator.userAgent.indexOf("MSIE"))
//    { 
//		location.href="/main/main_IE.jsp";
//
//    }
	
	function pop_close(id){
		$("#"+id).hide();
	}
	
	</script>
	<style> 
	     .black_overlay{ 
	         display: none; 
	         position: absolute; 
	         top: 0%; 
	         left: 0%; 
	         width: 100%; 
	         height: 100%; 
	         background-color: black; 
	         z-index:1001; 
	         -moz-opacity: 0.8; 
	         opacity:.80; 
	         filter: alpha(opacity=80); 
	     } 
	     .white_content { 
	         display: none; 
	         position: absolute; 
	         top: 10%; 
	         left: 35%; 
	         width: 270px; 
	         height: 520px; 
	         padding: 16px; 
	         border: 0; 
	         z-index:1002; 
	         overflow: auto; 
	     } 
	 </style> 
</HEAD>
<body leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0">
	<!--menu-->
	<jsp:include page="/main/menu.jsp" />
	<!--//menu-->
	<table width="1200" border="0" align="center" cellpadding="0" cellspacing="0">
		<tr>
			<td align="center"><img src="/images/main/safecamping.jpg"/></td>
		</tr>
	</table>
	<div id="container">
		<div id="contents">
			<div id="m_visu" class="section">
				<div class="gallery_wrap" id="sliderImg01">
					<div class="inner">
						<ul class="gallery">
<%
Vector<MainBoardVO> vBoard = MainDAO.getInstance().selectMainBannerShow();
int count = vBoard.size();
if( count > 0 ){
	int bannerNo = 0;
	String bannerName = "";
	String imagePath = "";
	int boardNo = 0;
	
	MainBoardVO board = null;
	for(int i=0; i<count; i++){
		board = vBoard.get(i);
		bannerNo = board.getNum();
		bannerName = board.getSubject();
		imagePath = board.getImgUrl();
		boardNo = board.getBoardNo();	
		%>
							<li>
								<a href="/main/board/view.jsp?num=<%=boardNo %>&pageNum=1&category=notice">
									<img src="<%=imagePath %>" alt="<%=bannerName %>" width="1200" height="390"/>
								</a>
							</li>
		<%
	}
}
%>						
								
							<a href="#" class="links_prev btn">
									<img alt="이전" src="/images/main/links_prev.png" />
							</a>
							<a href="#" class="links_next btn">
									<img alt="다음" src="/images/main/links_next.png" />
							</a>
							<ul class="control"></ul>
					</div>
				</div>
			</div>
		</div>
	</div>

<%
MainBoardVO board = MainDAO.getInstance().getContent("main");
out.print(board.getContents());
%>	
	<!--bottom-->
	<jsp:include page="/main/bottom.jsp" />
	<!--//bottom-->
	<!-- POPUP -->
<%
	String dvsn = "main";
	Vector<PopupVO> vPopup = CommonDAO.getInstance().selectPopupList(dvsn);
	if(vPopup != null){
		
		String layerId = "";
		String style = "";
		String imgSrc = "";
		String usemapId = "";
		String area = "";
		String alt = "";
		String href = "";
		
		PopupVO popup = null;
		for(int i=0; i<vPopup.size(); i++){
			popup = vPopup.get(i);
			layerId = popup.getLayerId();
			style = popup.getStyle();
			imgSrc = popup.getImgSrc();
			usemapId = popup.getUsemapId();
			area = popup.getArea();
			alt = popup.getAlt();
			
			%>
			<div class="<%=layerId%>" style="<%=style %>" id="<%=layerId%>">
				<img src="<%=imgSrc %>" border="0" usemap="#<%=usemapId%>" alt="<%=alt %>"/>
				<map name="<%=usemapId%>" id="<%=usemapId%>">
					<%=area %>
				</map>
			</div>
			<%
		}
		
	}
%>	
</BODY>
<script type="text/javascript">
$(document).ready(function(){
	$('.flexslider').flexslider({
		animation: "slide",
		start: function(slider){
			$('body').removeClass('loading');}
	});
	
});

</script>

</HTML>