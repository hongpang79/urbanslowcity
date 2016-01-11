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
						<h4 class="tit"><img src="/images/content/subTitKidsZone.jpg" alt="Kids Zone"></h4>
					</div>
					
					<div class="slidePhotoBox">
					    <a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/20150703_230034_001.jpg" data-fancybox-group="kidzone" title=""><img src="/images/content/kidzone/subMain.jpg" alt="" /></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/20150703_230059.jpg" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0802.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0827.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0848.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0854.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0867.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0883.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0902.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0910.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0911.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/DSC_0928.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/IMG_4962.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/IMG_4963.JPG" data-fancybox-group="kidzone" title=""></a>
					 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/content/kidzone/IMG_4964.JPG" data-fancybox-group="kidzone" title=""></a>
					</div>

					<div class="btmCon">
					  <div class="leftArea">
							<div class="topTxtwrap">
								<div class="topTxt mgt40">
									<img src="/images/content/kidzone/kidsTxt.png" alt="키드존소개">
								</div>
							</div>
						</div>
						<div class="rightArea">
							<div class="HotelInfoBoxB mgt20">
								<div class="HotelBoxTop">
									<div class="conTitle2 titNew">
										<h3>운영시간 및 대상</h3>
									</div>
									<div class="introList">
										<p class="tit">운영시간</p>
										<div class="useIntro">
											<p>10:00 ~ 22:00</p>
										</div>
									</div>
									<div class="introList">
										<p class="tit">대상</p>
										<div class="useIntro">
											<p>4세~12세 어린이</p>
										</div>
									</div>
									<div class="introList">
										<p class="tit">이용 요금</p>
										<div class="useIntro">
											<p>트램벌린 - 무료<br>
											   키즈수영장 - 무료<br>
											  사금체험  - 1만원(1인)<br>
											  풍등날리기<br>
											 - 1셋트(4개) 1만5천원 / 추가시 3천원(1개)</p>
                                         <p>＊프로그램에 따라 요금이 상이합니다.</p>
                                         <p>＊해당 내용은 기상 상황 또는 캠핑장 사정에 의해 <br>      
                                           &nbsp;&nbsp;장소 변경 및 취소 될 수 있습니다.<br>
										</div>
									</div>
							</div>
							</div>
						</div>
				  </div> 


					  <div class="btmConB">
						<h5 class="ActivConTitleA"><img src="/images/content/subTitSsIntro.jpg" alt="시설 안내"></h5>

						<div class="ssIntroWrap">
							<ul>
								<li><!-- 274*157 -->
									<span><img src="/images/content/kidzone/kidsImgA.jpg" alt="드램플린 사진"></span>
									<div class="ssIntro">
								  <img src="/images/content/kidzone/txtA.png" alt="드램플린"></div>
							    </li>

								<li>
									<span><img src="/images/content/kidzone/kidsImgB.jpg" alt="사금체험 사진"></span>
									<div class="ssIntro">
								  <img src="/images/content/kidzone/txtB.png" alt="사금체험"></div>
							  </li>

								<li class="mgr0">
									<span><img src="/images/content/kidzone/kidsImgC.jpg" alt="풍등날리기 사진"></span>
									<div class="ssIntro">
								  <img src="/images/content/kidzone/txtC.png" alt="풍등날리기"></div>
							  </li>
							  
							  	<li><!-- 274*157 -->
									<span><img src="/images/content/kidzone/kidsImgD.jpg" alt="드램플린 사진"></span>
									<div class="ssIntro">
								  <img src="/images/content/kidzone/txtD.png" alt="드램플린"></div>
							    </li>
	
								
							</ul>
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
