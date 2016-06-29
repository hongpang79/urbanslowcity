<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Vector" %>
<%@ page import="java.text.NumberFormat" %>
<%@ page import="admin.PopupVO" %>
<%@ page import="admin.CommonDAO" %>
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
							<li>
								<a href="/main/board/view.jsp?num=683&pageNum=1&category=notice">
									<img src="/images/main/main14.jpg" alt="유아풀장개장" width="1200" height="390"/>
								</a>
							</li>
							<li>
								<a href="/main/board/view.jsp?num=682&pageNum=1&category=notice">
									<img src="/images/main/main13.jpg" alt="섬머패키지" width="1200" height="390"/>
								</a>
							</li>
							<li>
								<a href="/main/board/view.jsp?num=603&pageNum=1&category=notice">
									<img src="/images/main/main12.jpg" alt="캠핑균일가이벤트" width="1200" height="390"/>
								</a>
							</li>
							<!--
							<li>
								<a href="#">
									<img src="/images/main/main11.jpg" alt="5월가정의달이벤트" width="1200" height="390"/>
								</a>
							</li>
							
							<li>
								<a href="/main/board/view.jsp?num=436&pageNum=1&category=notice">
									<img src="/images/main/main9.jpg" alt="어반슬로우시티맵버쉽" width="1200" height="390"/>
								</a>
							</li>
							 
							<li>
								<a href="#">
									<img src="/images/main/main7.jpg" alt="대형화덕" width="1200" height="390"/>
								</a>
							</li>
							
							<li>
								<a href="/main/board/view.jsp?num=331&pageNum=1&category=notice">
									<img src="/images/main/main6.jpg" alt="송어잡기" width="1200" height="390"/>
								</a>
							</li>
							 
							
							<li>
								<a href="/main/content/glamping.jsp">
									<img src="/images/main/main5.jpg" alt="감성존" width="1200" height="390"/>
								</a>
							</li>
							
							<li>
								<a href="#">
									<img src="/images/main/main4.jpg" alt="불금 이벤트" width="1200" height="390"/>
								</a>
							</li>
							-->
							<!-- 
							<li>
								<a href="#">
									<img src="/images/main/main1.jpg" alt="가을 이벤트" width="1200" height="390"/>
								</a>
							</li>
							 -->
							<!-- 
							<li>
								<a href="#">
									<img src="/images/main/main2.jpg" alt="summer패키지" width="1200" height="390"/>
								</a>
							</li>
							-->	
							<li>
								<a href="/main/board/view.jsp?num=169&pageNum=1&category=notice">
									<img src="/images/main/main3.jpg" alt="크루즈요트럭서리투어" width="1200" height="390"/>
								</a>
							</li>
							
								
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

	<!-- 동영상 -->
	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01" >
		<tr>
			<td align="center">
				<table width="1200" border="0" cellspacing="0" cellpadding="0" >
				  <tr>
				    <td><br><hr/></br></td>
				  </tr>
				  <tr>
				  	<td align="center">
				  		<iframe width="480" height="270" src="https://www.youtube.com/embed/H-p6EuZqFfE?rel=0&amp;showinfo=0;wmode=opaque;" frameborder="0" allowfullscreen></iframe>
				  		&nbsp;
						<iframe width="480" height="270" src="https://www.youtube.com/embed/qngozpgqJ9E?rel=0&amp;showinfo=0;wmode=opaque;" frameborder="0" allowfullscreen></iframe>
						<br><br>
						<iframe width="480" height="270" src="https://www.youtube.com/embed/aqhngtNurmk?rel=0&amp;showinfo=0;wmode=opaque;" frameborder="0" allowfullscreen></iframe>
						&nbsp;
						<iframe width="480" height="270" src="https://www.youtube.com/embed/WJhmJ-Vue5o?rel=0&amp;showinfo=0;wmode=opaque;" frameborder="0" allowfullscreen></iframe>
				  	</td>
				  </tr>
				</table>
			</td>
		</tr>
	</table>
	<!-- 방송  / 패키지 -->
	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01" >
		<tr>
			<td align="center">
				<table width="1200" border="0" cellspacing="0" cellpadding="0" >
				  <tr>
				    <td align="center">
    
						<table width="1200" border="0" cellspacing="0" cellpadding="0">
						  <tr>
						    <td colspan="3"><br><hr/></br></td>
						  </tr>
						  <tr>
						  	<td width="100px"></td>
						  	<td colspan="2"><img src="/images/main/welcome.png"/><br/></td>
						  </tr>
						  <tr>
						  	<td colspan="3" align="center">
						  		<a href="/main/board/view.jsp?num=733&pageNum=1&category=photo"><img src="/images/main/northspace.jpg"/></a><br/><br/>
						  	</td>
						  </tr>
						  <tr>
						  	<td colspan="3" align="center">
						  		<a href="/main/board/view.jsp?num=726&pageNum=1&category=photo"><img src="/images/main/coleman.jpg"/></a><br/><br/>
						  	</td>
						  </tr>
						  <tr>
						  	<td colspan="3" align="center">
						  		<a href="/main/board/view.jsp?num=380&pageNum=1&category=photo"><img src="/images/main/2tv.jpg"/></a><br/><br/>
						  	</td>
						  </tr>
						  <tr>
						  	<td colspan="3" align="center">
						  		<a href="/main/board/view.jsp?num=330&pageNum=1&category=photo"><img src="/images/main/topband.jpg"/></a><br/><br/>
						  	</td>
						  </tr>
						  <tr>
						  	<td colspan="3" align="center">
						  		<a href="/main/board/view.jsp?num=217&pageNum=1&category=photo"><img src="/images/main/kt.jpg"/></a><br/><br/>
						  	</td>
						  </tr>
						   <tr>
						  	<td colspan="3" align="center">
						  		<a href="/main/board/view.jsp?num=168&pageNum=1&category=photo"><img src="/images/main/jtbc.jpg"/></a><br/><br/>
						  	</td>
						  </tr>
						  <tr>
						  	<td colspan="3" align="center">
						  		<a href="/main/board/view.jsp?num=150&pageNum=1&category=photo"><img src="/images/main/mbc.jpg"/></a><br/><br/>
						  	</td>
						  </tr>
						  <tr>
						    <td colspan="3"><br><hr/></br></td>
						  </tr>
						  
						  <tr>
						  	<td colspan="3" align="center">
						  		<iframe width="330" height="186" src="https://www.youtube.com/embed/gYwjWZLqu7Y?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
						  		<iframe width="330" height="186" src="https://www.youtube.com/embed/ejy7Cp_06uc?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
						  		<iframe width="330" height="186" src="https://www.youtube.com/embed/XM7h0t0hD98?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
						  	</td>
						  </tr>
<!-- 						  
						  <tr>
						    <td colspan="3"><br><hr/></br></td>
						  </tr>					  
						  <tr>
						  	<td width="100px"></td>
						  	<td colspan="2">&nbsp;<br/></td>
						  	<!-- <td colspan="2"><img src="/images/main/packages.png"/><br/></td>  -->
						  	<!-- 
						  	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/images/main/message.png"/><br/></td>
						  	 -->
<!-- 					  </tr>
						  <tr>
						  	<td width="100px"></td>
						  	<td colspan="2" align="left">
						  		<a href="/main/board/view.jsp?num=169&pageNum=1&category=notice"><img src="/images/main/yacht_package.jpg"/></a>&nbsp;
						  		<a href="http://www.urbanslowcity.com/main/content/waterLeisureSports.jsp"><img src="/images/main/img_package.jpg"/></a>
						  	</td>
						  </tr>
 -->						  
						  <!-- 
						  <tr>
						    <td colspan="3"><br><hr/></br></td>
						  </tr>
						  <tr>
						  	<td width="100px"></td>
						  	<td colspan="2" align="left">
						  		<a href="/main/board/view.jsp?num=331&pageNum=1&category=notice"><img src="/images/main/songa_main.jpg"/></a>&nbsp;
						  		<a href="/main/content/handicraft.jsp"><img src="/images/main/handicraft.jpg"/></a>
						  	</td>
						  </tr>
						   -->
						</table>
					</td>
				  </tr>
				</table>
			</td>
		</tr>
	</table>
	<br>
	<!-- 배너광고 -->
	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01" >
		<tr>
			<td align="center">
				<table width="1200" border="0" cellspacing="0" cellpadding="0" >
				  <tr>
				    <td align="center">
    
						<table width="1200" border="0" cellspacing="0" cellpadding="0">
						  <tr>
						    <td colspan="3"><br><hr/></br></td>
						  </tr>
						  <tr>
						  	<td width="400px" rowspan="2" align="right">
						  		<a href="http://www.urbanslowcity.com"><img src="/images/banner/urbanslowcity.png"/></a><br/><br/>
						  		<a href="/main/contact/contact.jsp"><img src="/images/main/contract.png"/></a>
						  	</td>
						  	<td align="center">
						  		<a href="http://www.campermonster.com"><img src="/images/banner/campermonster.jpg"/></a><br/><br/>
						  	</td>
						  	<td width="120px" rowspan="2"></td>
						  </tr>
						  <tr>
						  	<td align="center">
						  		<a href="http://www.bfourseason.com"><img src="/images/banner/bfourseason.jpg"/></a><br/>
						  	</td>
						  </tr>
						</table>
					</td>
				  </tr>
				</table>
			</td>
		</tr>
	</table>
	<br><br>
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