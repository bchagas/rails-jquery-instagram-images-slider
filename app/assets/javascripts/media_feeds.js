$(document).ready(function(){
	$(".image_reel img:first").addClass("active");
	
	var imageWidth = $(".active").width();
	var imageSum = $(".image_reel img").size();
	var imageReelWidth = imageWidth * imageSum;
	var image_reelPosition = 0;
	
	$(".image_reel").css({'width' : imageReelWidth })

	rotate = function(){
		image_reelPosition = image_reelPosition + imageWidth;
		
		$(".image_reel img").removeClass("active");
		$active.addClass("active");
		
		if(image_reelPosition >= imageReelWidth) {
			image_reelPosition = 0;
			triggerID = 0;
		}

		$(".image_reel").animate({
			left: -image_reelPosition
		}, 500);
	};

	rotateSwitch = function() {
		play = setInterval(function(){
			$active = $("img.active").next();
			if ($active.length == 0) {
				$active = $('.image_reel img:first');
			}
			rotate();
		}, 3000)
	};

	rotateSwitch();
});
