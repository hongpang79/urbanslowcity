(function($){
	$(document).ready(function(){
		// [START] slide
		function fadeGallery(obj, timer){
			var $speed = 500;
			var $wrapper = "#" + obj;

			var $sel = 0;
			var flag = true

			$($wrapper).find(".gallery").children("li:gt(0)").hide();
			if($($wrapper).find(".control li").length == 0){
				for(j = 0; j < $($wrapper).find(".gallery").children("li").length; j++){
					$($wrapper).find(".control").append('<li><a href="#">배너보기</a></li>\n');
				}
			};
			$($wrapper).find(".control").children("li:first-child").addClass("on");
			if($($wrapper).find(".gallery").children("li").length==1){
				return false;
			}
			function goNext(){
				if(flag == true){
					flag = false;
					$sel++;
					if($sel == $($wrapper).find(".gallery").children("li").size()){
						$sel = 0;
					}
					$($wrapper).find(".control").children("li").eq($sel).addClass("on");
					$($wrapper).find(".control").children("li").not($($wrapper).find(".control").children("li").eq($sel)).removeClass("on");
					$($wrapper).find(".gallery").children("li")
						.fadeOut()
						.eq($sel).fadeIn(function(){flag = true;});
				}
				return false;
			}
			$($wrapper).find(".links_next").click(goNext);

			function goPrev(){
				if(flag == true){
					flag = false;
					$sel--;
					if($sel == -1){
						$sel = $($wrapper).find(".gallery").children("li").size() - 1;
					}
					$($wrapper).find(".control").children("li").eq($sel).addClass("on");
					$($wrapper).find(".control").children("li").not($($wrapper).find(".control").children("li").eq($sel)).removeClass("on");
					$($wrapper).find(".gallery").children("li")
						.fadeOut()
						.eq($sel).fadeIn(function(){flag = true;});
				}
				return false;
			}
			$($wrapper).find(".links_prev").click(goPrev);

			// 바로가기
			function goDirect(){
				if(flag == true && !$(this).parent().hasClass("on")){
					flag = false;
					$sel = $(this).parent().index();
					$(this).parent("li").addClass("on");
					$($wrapper).find(".control").children("li").not($(this).parent("li")).removeClass("on");
					$($wrapper).find(".gallery").children("li")
						.fadeOut()
						.eq($sel).fadeIn(function(){flag = true;});
				}
				return false;
			}
			$($wrapper).find(".control a").click(goDirect);

			// 자동실행
			var autoPlay;
			function autoChange(){
				autoPlay = setInterval(goNext, timer);
			}
			autoChange();

			// 영역 오버시 멈춤
			$($wrapper).find(".gallery").hover(
				function(){
					clearInterval(autoPlay);
				},
				function(){
					autoChange();
				}
			);

			// 컨트롤러
			$($wrapper).find(".links_stop").click(function(){
				clearInterval(autoPlay);
			});
			$($wrapper).find(".links_play").click(function(){
				autoChange();
			});
		}

		// 호출함수(아이디, 딜레이)
		if($("#sliderImg01").length>0){
			fadeGallery("sliderImg01", 2500);
		}
		// [END] slide
		

	});
})(jQuery);