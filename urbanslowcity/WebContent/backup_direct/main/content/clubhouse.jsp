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
						<h4 class="tit"><img src="/images/content/subTitClubhouse.jpg" alt="Clubhouse"></h4>
					</div>
					
					<div class="slidePhotoBox">
						<a class="fancybox" href="/images/content/c1.jpg" data-fancybox-group="clubhouse" title=""><img src="/images/content/clubhouse/subMain.jpg" alt="" /></a>
						<a class="fancybox" href="/images/content/c2.jpg" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/c3.jpg" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/c4.jpg" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/c5.jpg" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/c6.jpg" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/c7.jpg" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0439.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0440.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0434.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0444.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0445.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0447.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0460.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0437.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0438.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0456.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0458.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0462.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0463.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0466.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0467.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0490.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0477.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0475.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0478.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0484.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0489.JPG" data-fancybox-group="clubhouse" title=""></a>
						<a class="fancybox" href="/images/content/clubhouse/DSC_0471.JPG" data-fancybox-group="clubhouse" title=""></a>			
					</div>

					<div class="btmCon">
					  <div class="leftArea">
							<div class="topTxtwrap">
								<div class="topTxt mgt40">
									<img src="/images/content/clubhouse/clubhouseTxt.png" alt="클럽하우스 소개">
								</div>
							</div>
						</div>
						<div class="rightArea">
							<div class="HotelInfoBoxB mgt20">
								<div class="HotelBoxTop">
									<div class="conTitle2 titNew">
										<h3>어반카페 및 매점</h3>
									</div>
									<div class="introList">
										<p class="tit">운영시간</p>
										<div class="useIntro">
											<p>08:00 ~ 24:00</p>
										</div>
									</div>
									<div class="introList">
										<p class="tit">메뉴</p>
										<div class="useIntro">
										 <p>커피(아메리카노), 과일쥬스, 토스트,<br> 잉글리쉬머핀(맥모닝)</p>
                                         <p>과자, 주류, 음료, 라면, 컵라면, 햇반,<br> 아이스크림, 수건, 세면도구, 장작, 숯 등</p>
										</div>
									</div>
							</div><!-- 
								<ul class="btnSet">
									<li class="first bTfi"><a href="/jeju/activities/kidsCabin.do" onclick="openCtrlPopup('./notiles/actFloorMapPop.do','actFloorMapPop');  return false;"><img src="/images/content/btnFloorMap.gif" alt="Floor Map"></a></li>
								</ul>  -->
							</div>
						</div>
				  </div> 


					  <div class="btmConB">
						<h5 class="ActivConTitleA"><img src="/images/content/subTitSsIntro.jpg" alt="시설 안내"></h5>

						<div class="ssIntroWrap">
							<ul>
								<li>
									<span><img src="/images/content/clubhouse/clubhouseImgA.jpg" alt="오두막 사진"></span>
									<div class="ssIntro">
								  <img src="/images/content/clubhouse/txtA.png" alt="어반카페및매점"></div>
							  </li>

								<li>
									<span><img src="/images/content/clubhouse/clubhouseImgB.jpg" alt="키즈 가든 사진"></span>
									<div class="ssIntro">
								  <img src="/images/content/clubhouse/txtB.png" alt="샤워장"></div>
							  </li>

								<li class="mgr0">
									<span><img src="/images/content/clubhouse/clubhouseImgC.jpg" alt="숲 속 놀이터 사진"></span>
									<div class="ssIntro">
								  <img src="/images/content/clubhouse/txtC.png" alt="개수대"></div>
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
