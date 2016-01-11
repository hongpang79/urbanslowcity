<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<!--[if lt IE 7 ]> <html class="ie ie6 no-js" lang="en"> <![endif]-->
<!--[if IE 7 ]>    <html class="ie ie7 no-js" lang="en"> <![endif]-->
<!--[if IE 8 ]>    <html class="ie ie8 no-js" lang="en"> <![endif]-->
<!--[if IE 9 ]>    <html class="ie ie9 no-js" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--><html class="no-js" lang="en"><!--<![endif]-->
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"> 
        <title>Urban Slow City </title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">   
        <link rel="stylesheet" type="text/css" href="/css/demo.css" />
        <link rel="stylesheet" type="text/css" href="/css/style1.css" />
  		<!-- script type="text/javascript" src="/bizdemo18406/img/new/new/js/modernizr.custom.86080.js"></script -->        
        <style>
  
			@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
  
		</style>
     	<!-- 레이어팝업시작 -->
     	<script language="javascript" type="text/javascript">
     	<!--
     	function setCookie(name, value, expirehours){
     		var todayDate = new Date();
     		todayDate.setHours(todayDate.getHours() + expirehours);
     		document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
     	}
     	function closeWin(){
     		if(document.getElementById("pop_today").checked){
     			setCookie("ncookie","done",24);
     		}
     		document.getElementById("layer_pop").style.display = "none";
     	}
     	-->
     	</script>
        
    </head>
    <body id="page">
        <ul class="cb-slideshow"><!-- 1024*683 -->
            <li><span>Image 01</span><div><!--<h3></h3>--></div></li>
            <li><span>Image 02</span><div><!--<h3></h3>--></div></li>
            <li><span>Image 03</span><div><!--<h3></h3>--></div></li>
            <li><span>Image 04</span><div><!--<h3></h3>--></div></li>
            <li><span>Image 05</span><div><!--<h3></h3>--></div></li>
            <li><span>Image 06</span><div><!--<h3></h3>--></div></li>
        </ul>
        <div class="container">
            <!-- Codrops top bar -->
            <!--<div class="codrops-top">
                <a href="http://tympanus.net/Development/RockingLetters/">
                    <strong>&laquo; Previous Demo: </strong>Rocking Letters with CSS3 &amp; jQuery
                </a>
                <span class="right">
                    <a href="http://www.flickr.com/photos/markjsebastian/" target="_blank">Photography by Mark Sebastian</a>
                    <a href="http://creativecommons.org/licenses/by-sa/2.0/deed.en" target="_blank">CC BY-SA 2.0</a>
                    <a href="http://tympanus.net/codrops/2012/01/02/fullscreen-background-image-slideshow-with-css3/">
                        <strong>Back to the Codrops Article</strong>
                    </a>
                </span>
                <div class="clr"></div>
            </div>--><!--/ Codrops top bar -->
            <header>
                <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="/index.jsp"><img src="/images/logo.png" border="0"></a></h1><!-- 270*71 -->
                <h2>The best camping and glamorous people </h2>
			    <p class="codrops-demos">
			     <a href="/main/about/about.jsp">ABOUT</a>
			     <a href="/main/site/site.jsp">SITE</a>
			     <a href="/main/content/content.jsp">CONTENT</a>
			     <a href="/Reservation.do">RESERVATION</a>
			     <a href="/main/board/list.jsp?category=notice">NOTICE</a>
			     <a href="/main/board/list.jsp?category=qna">Q&A</a>
			     <a href="/main/contact/contact.jsp">CONTACT</a>
			    </p>
            </header>
        </div>
        <div class="footer">
        	<img src="/images/intro_bottom.png" border="0">
		</div>
    </body>
    <!-- popup -->
    <div class="layer_popup" style="position:absolute; width:510px; left:50%; margin-left:-380px; top:90px; z-index=1; border:1px solid #333333;" id="layer_pop">
    	<table width="510" height="680" border="0" cellpadding="0" cellspacing="0" background="/images/pop_bg.jpg">
    		<tr>
    			<td align="center" valign="bottom" padding="50">
    				<embed src="/images/content/hyunmoo.mp4" autostart="true"  width="268" height="480"></embed >
    				<!-- <img src="http://img.naver.net/static/newsstand/up/2014/0715/366.gif" width="500" height="500" border="0" usemap="#m_pop" /> -->
    			</td>
    		</tr>
    		<tr>
    			<td align="center" height="30" bgcolor="#333333">
    				<table width="95%" border="0" cellpadding="0" cellspacing="0">
    					<tr>
    						<td align="left"><input type="checkbox" name="pop_today" id="pop_today" /> <font color="#FFFFFF">오늘 하루 이 창 열지 않음</font></td>
    						<td align="right">
    							<a href="javascript:closeWin();"><font color="#FFFFFF">[close]</font></a>
    						</td>
    					</tr>
    				</table>
    			</td>
    		</tr>	
    	</table>
    </div>
</html>
<script language="javascript" type="text/javascript">
<!--
	cookiedata = document.cookie;
	//alert(cookiedata.indexOf("ncookie=done"));
	if(cookiedata.indexOf("ncookie=done")<0){
		//alert("false");
		document.getElementById("layer_pop").style.display = "inline";
	}else{
		//alert("true");
		document.getElementById("layer_pop").style.display="none";
	}
-->
</script>