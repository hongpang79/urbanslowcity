<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<HEAD>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<TITLE>Urban Slow City </TITLE>
	<link rel='stylesheet' type='text/css' href='/css/company.css'>
	<link href="/css/main.css" rel="stylesheet" type="text/css" />
	<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	
	<script type="text/javascript" src="/js/main.js"></script>
	<!-- FlexSlider -->
	<script type="text/javascript" src="/js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="/js/jquery-ui.min.js"></script>
	<script type="text/javascript">
	
	if(-1 != navigator.userAgent.indexOf("MSIE"))
    { 
		location.href="/main/main_IE.jsp";

    }
	
	function pop_close(){
		$("#layer_pop").hide();
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
	
	<div id="container">
		<div id="contents">
			<div id="m_visu" class="section">
				<div class="gallery_wrap" id="sliderImg01">
					<div class="inner">
						<ul class="gallery">
							<li>
								<a href="#">
									<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/main1.jpg" alt="open특가" width="1200" height="390"/>
								</a>
							</li>
							<li>
								<a href="#">
									<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/main2.jpg" alt="summer패키지" width="1200" height="390"/>
								</a>
							</li>
							<li>
								<a href="#">
									<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/main3.jpg" alt="크루즈요트럭서리투어" width="1200" height="390"/>
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
						  		<a href="/main/board/view.jsp?num=122&pageNum=1&category=photo"><img src="/images/main/solo1.jpg"/></a><br/><br/>
						  	</td>
						  </tr>
						  <tr>
						    <td colspan="3"><br><hr/></br></td>
						  </tr>
						  <tr>
						  	<td width="100px"></td>
						  	<td><img src="/images/main/packages.png"/><br/></td>
						  	<td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<img src="/images/main/message.png"/><br/></td>
						  </tr>
						  <tr>
						  	<td width="100px"></td>
						  	<td align="center">
						  		<img src="/images/main/img_package.jpg"/><br/><br/>
						  	</td>
						  	<td align="center">
						  	
						  		<div class="wrap_banner">
									<div class="banner1">
										<a href="javascript:void(0)" onclick = "document.getElementById('hyunmoo').style.display='block';document.getElementById('fade').style.display='block'">
											<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/hyunmoo.jpg" width="90%" height="90%" alt="" />
										</a>
									</div>
									<div class="banner2">
										<a href="javascript:void(0)" onclick = "document.getElementById('jiwon').style.display='block';document.getElementById('fade').style.display='block'">
											<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/jiwon.jpg" width="90%" height="90%" alt="" />
										</a>
									</div>
										
									<div class="banner3">
										<a href="javascript:void(0)" onclick = "document.getElementById('hyunhei').style.display='block';document.getElementById('fade').style.display='block'">
											<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/hyunhei.jpg" width="90%" height="90%" alt="" />
										</a>
									</div>
									
									<div class="banner4">
										<a href="javascript:void(0)" onclick = "document.getElementById('hanyoung').style.display='block';document.getElementById('fade').style.display='block'">
											<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/hanyoung.jpg" width="90%" height="90%" alt="" />
										</a>
									</div>
									<div class="banner5">
										<a href="javascript:void(0)" onclick = "document.getElementById('narea').style.display='block';document.getElementById('fade').style.display='block'">
											<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/narea.jpg" width="90%" height="90%" alt="" />
										</a>
									</div>
									<div class="banner6">
										<a href="javascript:void(0)" onclick = "document.getElementById('suwon').style.display='block';document.getElementById('fade').style.display='block'">
											<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/suwon.jpg" width="90%" height="90%" alt="" />
										</a>
									</div>
									<div class="banner7">
										<a href="javascript:void(0)" onclick = "document.getElementById('rokgi').style.display='block';document.getElementById('fade').style.display='block'">
											<img src="http://urbanslowcity.cdn3.cafe24.com/images/main/rokgi.jpg" width="90%" height="90%" alt="" />
										</a>
									</div>
									
								</div>
								<!-- //wrap_banner -->
						  	</td>
						  </tr>
						</table>
					</td>
				  </tr>
				</table>
			</td>
		</tr>
	</table>
	<br>
	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01" >
		<tr>
			<td align="center">
				<table width="1200" border="0" cellspacing="0" cellpadding="0" >
				  <tr>
				    <td align="center">
    
						<table width="1200" border="0" cellspacing="0" cellpadding="0">
						  <tr>
						    <td><br><hr/></br></td>
						  </tr>
						  <tr>
						  	<td align="center">
						  		<a href="http://www.bfourseason.com"><img src="/images/banner/bfourseason.jpg"/></a>
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
	
	<div id="hyunmoo" class="white_content">
		<table>
			<tr>
				<td>
					<embed src="/images/main/hyunmoo.mp4" autostart="false"  width="268" height="480"></embed >
				</td>
			</tr>
			<tr height="30" bgcolor="#FFFFFF">
				<td align='right'><a href="javascript:movieClose('hyunmoo');">[닫기]</a>&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
	</div>
	<div id="jiwon" class="white_content">
		<table>
			<tr>
				<td>
					<embed src='/images/main/jiwon.mp4' autostart='false'  width='268' height='480'></embed >
				</td>
			</tr>
			<tr height='30' bgcolor='#FFFFFF'>
				<td align='right'><a href="javascript:movieClose('jiwon');">[닫기]</a>&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
	</div>
	<div id="hyunhei" class="white_content">
		<table>
			<tr>
				<td>
					<embed src="/images/main/hyunhei.mp4" autostart="false"  width="268" height="480"></embed >
				</td>
			</tr>
			<tr height="30" bgcolor="#FFFFFF">
				<td align='right'><a href="javascript:movieClose('hyunhei');">[닫기]</a>&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
	</div>
	<div id="hanyoung" class="white_content">
		<table>
			<tr>
				<td>
					<embed src="/images/main/hanyoung.mp4" autostart="false"  width="268" height="480"></embed >
				</td>
			</tr>
			<tr height="30" bgcolor="#FFFFFF">
				<td align='right'><a href="javascript:movieClose('hanyoung');">[닫기]</a>&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
	</div>
	<div id="narea" class="white_content">
		<table>
			<tr>
				<td>
					<embed src="/images/main/narea.mp4" autostart="false"  width="268" height="480"></embed >
				</td>
			</tr>
			<tr height="30" bgcolor="#FFFFFF">
				<td align='right'><a href="javascript:movieClose('narea');">[닫기]</a>&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
	</div>
	<div id="suwon" class="white_content">
		<table>
			<tr>
				<td>
					<embed src="/images/main/suwon.mp4" autostart="false"  width="268" height="480"></embed >
				</td>
			</tr>
			<tr height="30" bgcolor="#FFFFFF">
				<td align='right'><a href="javascript:movieClose('suwon');">[닫기]</a>&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
	</div>
	<div id="rokgi" class="white_content">
		<table>
			<tr>
				<td>
					<embed src="/images/main/rokgi.mp4" autostart="false"  width="268" height="480"></embed >
				</td>
			</tr>
			<tr height="30" bgcolor="#FFFFFF">
				<td align='right'><a href="javascript:movieClose('rokgi');">[닫기]</a>&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
	</div>
    <div id="fade" class="black_overlay"></div>
<!--     
    <div class="layer_pop" style="position:absolute; width:387px;left:26%;margin-left:-200px; top:250px; z-index:1" id="layer_pop">
    	<img src="/images/notice.jpg" border="0" usemap="#event_notice"/>
    	<map name="event_notice" id="event_notice">
    		<area shape="rect" coords="333,229,379,239" href="javascript:pop_close();" alt="" />
    	</map>
    </div>
-->
     
    <div class="layer_pop" style="position:absolute; width:387px;left:26%;margin-left:500px; top:250px; z-index:1" id="layer_pop">
    	<img src="/images/main/register.jpg" border="0" usemap="#event_notice"/>
    	<map name="event_notice" id="event_notice">
    		<area shape="rect" coords="355,575,384,589" href="javascript:pop_close();" alt="" />
    	</map>
    </div>

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


<script>
function movieClose(str){
	
	if(-1 != navigator.userAgent.indexOf("MSIE"))
    {
         location.reload();

    }else{
    	embed=$('#'+str).html();
    	$('#'+str).html('');
    	
      	document.getElementById('fade').style.display='none';
    	$('#'+str).html(embed); 
    	document.getElementById(str).style.display='none';	
    }
	
}
</script>
</HTML>