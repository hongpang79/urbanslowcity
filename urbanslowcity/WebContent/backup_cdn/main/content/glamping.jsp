<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<HTML>
<HEAD>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<TITLE>Urban Slow City </TITLE>
	<link href="/css/content.css" rel="stylesheet" type="text/css" />
	<link href="/css/activities.css" rel="stylesheet" type="text/css" />
	<link href="/css/accommodation.css" rel="stylesheet" type="text/css" />
		<!-- fancyBox - Fancy jQuery Lightbox -->
	<!-- Add jQuery library -->
	<script type="text/javascript" src="/js/jquery-1.10.1.min.js"></script>

	<!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="/js/jquery.mousewheel-3.0.6.pack.js"></script>

	<!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="/fancybox/source/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="/fancybox/source/jquery.fancybox.css?v=2.1.5" media="screen" />

	<!-- Add Button helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="/fancybox/source/helpers/jquery.fancybox-buttons.css?v=1.0.5" />
	<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-buttons.js?v=1.0.5"></script>

	<!-- Add Thumbnail helper (this is optional) -->
	<link rel="stylesheet" type="text/css" href="/fancybox/source/helpers/jquery.fancybox-thumbs.css?v=1.0.7" />
	<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-thumbs.js?v=1.0.7"></script>

	<!-- Add Media helper (this is optional) -->
	<script type="text/javascript" src="/fancybox/source/helpers/jquery.fancybox-media.js?v=1.0.6"></script>

	<script type="text/javascript">
		$(document).ready(function() {
			/*
			 *  Simple image gallery. Uses default settings
			 */

			$('.fancybox').fancybox();

			/*
			 *  Different effects
			 */

			// Change title type, overlay closing speed
			$(".fancybox-effects-a").fancybox({
				helpers: {
					title : {
						type : 'outside'
					},
					overlay : {
						speedOut : 0
					}
				}
			});

			// Disable opening and closing animations, change title type
			$(".fancybox-effects-b").fancybox({
				openEffect  : 'none',
				closeEffect	: 'none',

				helpers : {
					title : {
						type : 'over'
					}
				}
			});

			// Set custom style, close if clicked, change title type and overlay color
			$(".fancybox-effects-c").fancybox({
				wrapCSS    : 'fancybox-custom',
				closeClick : true,

				openEffect : 'none',

				helpers : {
					title : {
						type : 'inside'
					},
					overlay : {
						css : {
							'background' : 'rgba(238,238,238,0.85)'
						}
					}
				}
			});

			// Remove padding, set opening and closing animations, close if clicked and disable overlay
			$(".fancybox-effects-d").fancybox({
				padding: 0,

				openEffect : 'elastic',
				openSpeed  : 150,

				closeEffect : 'elastic',
				closeSpeed  : 150,

				closeClick : true,

				helpers : {
					overlay : null
				}
			});

			/*
			 *  Button helper. Disable animations, hide close button, change title type and content
			 */

			$('.fancybox-buttons').fancybox({
				openEffect  : 'none',
				closeEffect : 'none',

				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,

				helpers : {
					title : {
						type : 'inside'
					},
					buttons	: {}
				},

				afterLoad : function() {
					this.title = 'Image ' + (this.index + 1) + ' of ' + this.group.length + (this.title ? ' - ' + this.title : '');
				}
			});


			/*
			 *  Thumbnail helper. Disable animations, hide close button, arrows and slide to next gallery item if clicked
			 */

			$('.fancybox-thumbs').fancybox({
				prevEffect : 'none',
				nextEffect : 'none',

				closeBtn  : false,
				arrows    : false,
				nextClick : true,

				helpers : {
					thumbs : {
						width  : 50,
						height : 50
					}
				}
			});

			/*
			 *  Media helper. Group items, disable animations, hide arrows, enable media and button helpers.
			*/
			$('.fancybox-media')
				.attr('rel', 'media-gallery')
				.fancybox({
					openEffect : 'none',
					closeEffect : 'none',
					prevEffect : 'none',
					nextEffect : 'none',

					arrows : false,
					helpers : {
						media : {},
						buttons : {}
					}
				});

			/*
			 *  Open manually
			 */

			$("#fancybox-manual-a").click(function() {
				$.fancybox.open('1_b.jpg');
			});

			$("#fancybox-manual-b").click(function() {
				$.fancybox.open({
					href : 'iframe.html',
					type : 'iframe',
					padding : 5
				});
			});

			$("#fancybox-manual-c").click(function() {
				$.fancybox.open([
					{
						href : '1_b.jpg',
						title : 'My title'
					}, {
						href : '2_b.jpg',
						title : '2nd title'
					}, {
						href : '3_b.jpg'
					}
				], {
					helpers : {
						thumbs : {
							width: 75,
							height: 50
						}
					}
				});
			});


		});
	</script>
	<style type="text/css">
		.fancybox-custom .fancybox-skin {
			box-shadow: 0 0 50px #222;
		}
	</style>
</HEAD>
<body leftmargin="0" rightmargin="0" topmargin="0" bottommargin="0">

	<!--menu-->
	<jsp:include page="/main/menu.jsp" />
	<!--//menu-->
	
	<table width="100%" border="0" align="center" cellpadding="0" cellspacing="0" id="Table_01" >
		<tr>
			<td align="center">
				<table width="1200" border="0" cellspacing="0" cellpadding="0" >
				  <tr>
				    <td align="center">
    
						<table width="1100" border="0" cellspacing="0" cellpadding="0">
  						  <tr height="100px">
  						  	<td width="80px">&nbsp;</td>
    						<td style="margin:0 auto; text-align:left;">
  	<div class="contain">
	
		<div class="container">
		
			<div class="contents" id="contents">
				
				<div class="ctnActivities ctnkids">
					<div class="headTit">
						<h4 class="tit"><img src="/images/content/subTitGlampingCamping.jpg" alt="Glamping"></h4>
					</div>
					<div class="slidePhotoBox">
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/g1.jpg" data-fancybox-group="glamping" title=""><img src="/images/content/glamping/glampingmain.jpg" alt="" /></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/g2.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/g3.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/g4.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/g5.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/g6.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/g7.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/g8.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/glamping/IMG_7359.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/glamping/IMG_7360.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/glamping/IMG_7362.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/glamping/IMG_7363.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/glamping/IMG_7365.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/glamping/IMG_7367.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/glamping/IMG_7371.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/glamping/IMG_7373.jpg" data-fancybox-group="glamping" title=""></a>
						<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/glamping/IMG_7375.jpg" data-fancybox-group="glamping" title=""></a>			
					</div>

					<div class="btmCon">
					  <div class="leftArea">
							<div class="topTxtwrap">
								<div class="topTxt mgt40">
									<img src="/images/content/glamping/glampingTxt.png" alt=""><br>
									<img src="/images/content/glamping/glampingTxt1.png" alt="">
								</div>
							</div>
						</div>
						<div class="rightArea">
							<div class="HotelInfoBoxB mgt20">
								<div class="HotelBoxTop">
									<div class="conTitle2 titNew">
										<h3>이용안내</h3>
									</div>
									<div class="introList">
										<p class="tit">입실/퇴실시간</p>
										<div class="useIntro">
											<p>입실 오후 2시<br>
											퇴실 오전 11시</p>
										</div>
									</div>
									<div class="introList">
										<p class="tit">예약</p>
										<div class="useIntro">
											<p>이용당일 예약가능</p>
										</div>
									</div>
									<div class="introList">
										<p class="tit">환불규정</p>
										<div class="useIntro">
										 <p>이용당일, 1일전 20%환불<br>
                                         2~3일 50%환불<br>
                                         4~5일 70%환불<br>
                                         6~7일 90%환불<br>
                                         10일이전 100%환불</p>
										</div>
									</div>
							</div><!-- 
								<ul class="btnSet">
									<li class="first bTfi"><a href="/jeju/activities/kidsCabin.do" onclick="openCtrlPopup('./notiles/actFloorMapPop.do','actFloorMapPop');  return false;"><img src="/images/content/btnFloorMap.gif" alt="Floor Map"></a></li>
								</ul> -->
							</div>
						</div>
				  </div> 


					  <div class="btmConB">
						<div>
							<span><img src="/images/content/glamping/glampingImgA.jpg" alt="" width="662" /></span>
							<span><img src="/images/content/glamping/glampingImgB.jpg" alt="" width="662" /></span>
							<span><img src="/images/content/glamping/glampingImgC.jpg" alt="" width="662" /></span>
							<span><img src="/images/content/glamping/glampingImgD.jpg" alt="" width="662" /></span>
							<span><img src="/images/content/glamping/glampingImgE.jpg" alt="" width="662" /></span>
							<span><img src="/images/content/glamping/glampingImgF.jpg" alt="" width="662" /></span>
						</div>

					 </div>
				</div>

			</div>

		</div>
	
	</div>
	
     						</td>
  						  </tr>
						  					  
						</table>
					</td>
				  </tr>
				</table>
			</td>
		</tr>
	</table>
	
	<!--bottom-->
	<jsp:include page="/main/bottom.jsp" />
	<!--//bottom-->

</BODY>
</HTML>
