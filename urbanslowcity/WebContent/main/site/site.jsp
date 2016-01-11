<HTML>
<HEAD>
	<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
	<TITLE>Urban Slow City </TITLE>
	<link rel='stylesheet' type='text/css' href='/css/company.css'>
	<script language='javascript' src='/js/common.js'></script>
	
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
						  <tr height="40px">
    						<td></td>
  						  </tr>
  						  <tr height="100px">
    						<td style="margin:0 auto; text-align:left;"><img src="/images/site/site.jpg" /></td>
  						  </tr>
						  <tr height="20px">
    						<td></td>
  						  </tr>
						  <tr>
						    <td style="margin:0 auto; text-align:center;" ><!-- 890*500  480*300 -->

    						    <a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/rainbow1.jpg" data-fancybox-group="rainbow" title=""><img src="/images/site/rainbow.jpg" width="480" height="300" alt="" /></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/rainbow2.jpg" data-fancybox-group="rainbow" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/rainbow3.jpg" data-fancybox-group="rainbow" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/rainbow4.jpg" data-fancybox-group="rainbow" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/rainbow5.jpg" data-fancybox-group="rainbow" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/rainbow6.jpg" data-fancybox-group="rainbow" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/rainbow7.jpg" data-fancybox-group="rainbow" title=""></a>
								
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black1.jpg" data-fancybox-group="black" title=""><img src="/images/site/black.jpg"  width="480" height="300" alt="" /></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black2.jpg" data-fancybox-group="black" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black3.jpg" data-fancybox-group="black" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black4.jpg" data-fancybox-group="black" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black5.jpg" data-fancybox-group="black" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black6.jpg" data-fancybox-group="black" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black7.jpg" data-fancybox-group="black" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black8.jpg" data-fancybox-group="black" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black9.jpg" data-fancybox-group="black" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/black10.jpg" data-fancybox-group="black" title=""></a>
							 	
							 	<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union1.jpg" data-fancybox-group="union" title=""><img src="/images/site/union.jpg" width="480" height="300" alt="" /></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union2.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union3.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union4.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union5.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union6.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union7.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union8.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union9.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union10.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union11.jpg" data-fancybox-group="union" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/union12.jpg" data-fancybox-group="union" title=""></a>
								
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand1.jpg" data-fancybox-group="grand" title=""><img src="/images/site/grand.jpg" width="480" height="300" alt="" /></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand2.jpg" data-fancybox-group="grand" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand3.jpg" data-fancybox-group="grand" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand4.jpg" data-fancybox-group="grand" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand5.jpg" data-fancybox-group="grand" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand6.jpg" data-fancybox-group="grand" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand7.jpg" data-fancybox-group="grand" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand8.jpg" data-fancybox-group="grand" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand9.jpg" data-fancybox-group="grand" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/grand10.jpg" data-fancybox-group="grand" title=""></a>
								
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/snowpic/DSC_1017.JPG" data-fancybox-group="snowpic" title=""><img src="/images/site/sen/snowpic.jpg" width="480" height="300" alt="" /></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/snowpic/DSC_1024.JPG" data-fancybox-group="snowpic" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/snowpic/DSC_1026.JPG" data-fancybox-group="snowpic" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/snowpic/DSC_1028.JPG" data-fancybox-group="snowpic" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/snowpic/DSC_1032.JPG" data-fancybox-group="snowpic" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/snowpic/DSC_1033.JPG" data-fancybox-group="snowpic" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/snowpic/DSC_1035.JPG" data-fancybox-group="snowpic" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/snowpic/DSC_1037.JPG" data-fancybox-group="snowpic" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/snowpic/DSC_1039.JPG" data-fancybox-group="snowpic" title=""></a>
								
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/revo/IMG_5498.JPG" data-fancybox-group="revo" title=""><img src="/images/site/sen/revo.jpg" width="480" height="300" alt="" /></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/revo/IMG_5499.JPG" data-fancybox-group="revo" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/revo/IMG_5500.JPG" data-fancybox-group="revo" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/revo/IMG_5502.JPG" data-fancybox-group="revo" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/revo/IMG_5503.JPG" data-fancybox-group="revo" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/revo/IMG_5504.JPG" data-fancybox-group="revo" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/revo/IMG_5505.JPG" data-fancybox-group="revo" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/revo/IMG_5507.JPG" data-fancybox-group="revo" title=""></a>
								
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5475.JPG" data-fancybox-group="tipi" title=""><img src="/images/site/sen/tipi.jpg" width="480" height="300" alt="" /></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5476.JPG" data-fancybox-group="tipi" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5477.JPG" data-fancybox-group="tipi" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5478.JPG" data-fancybox-group="tipi" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5479.JPG" data-fancybox-group="tipi" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5483.JPG" data-fancybox-group="tipi" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5484.JPG" data-fancybox-group="tipi" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5485.JPG" data-fancybox-group="tipi" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5486.JPG" data-fancybox-group="tipi" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5487.JPG" data-fancybox-group="tipi" title=""></a>
								
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5489.JPG" data-fancybox-group="tipi2" title=""><img src="/images/site/sen/tipi2.jpg" width="480" height="300" alt="" /></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5490.JPG" data-fancybox-group="tipi2" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5491.JPG" data-fancybox-group="tipi2" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5492.JPG" data-fancybox-group="tipi2" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5493.JPG" data-fancybox-group="tipi2" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5494.JPG" data-fancybox-group="tipi2" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5495.JPG" data-fancybox-group="tipi2" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5496.JPG" data-fancybox-group="tipi2" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5497.JPG" data-fancybox-group="tipi2" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/tipi/IMG_5488.JPG" data-fancybox-group="tipi2" title=""></a>
																
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa1.jpg" data-fancybox-group="spa" title=""><img src="/images/site/spa.jpg" width="480" height="300" alt="" /></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa2.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa3.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa4.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa5.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa6.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa7.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa8.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa9.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa10.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa/IMG_7315.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa/IMG_7318.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa/IMG_7320.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa/IMG_7322.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa/IMG_7323.jpg" data-fancybox-group="spa" title=""></a>
								<a class="fancybox" href="http://urbanslowcity.cdn3.cafe24.com/images/site/spa/IMG_7325.jpg" data-fancybox-group="spa" title=""></a>
								
								<a class="fancybox" href="/images/content/g1.jpg" data-fancybox-group="self" title=""><img src="/images/content/camping.jpg" width="480" height="300" alt="" /></a>
								<a class="fancybox" href="/images/content/g3.jpg" data-fancybox-group="self" title=""></a>
								<a class="fancybox" href="/images/content/g7.jpg" data-fancybox-group="self" title=""></a>
								<a class="fancybox" href="/images/content/g8.jpg" data-fancybox-group="self" title=""></a>
								<a class="fancybox" href="/images/content/camping/IMG_4925.JPG" data-fancybox-group="self" title=""></a>
								<a class="fancybox" href="/images/content/camping/IMG_4926.JPG" data-fancybox-group="self" title=""></a>
								<a class="fancybox" href="/images/content/camping/IMG_4929.JPG" data-fancybox-group="self" title=""></a>
								<a class="fancybox" href="/images/content/camping/IMG_4930.JPG" data-fancybox-group="self" title=""></a>
								<a class="fancybox" href="/images/content/camping/IMG_4932.JPG" data-fancybox-group="self" title=""></a>
							  </td>
						  </tr>
						  
						  <tr height="100px">
    						<td></td>
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
<script language="javascript" type="text/javascript" src="/js/urban.lib.js?date=1364782903"></script>
