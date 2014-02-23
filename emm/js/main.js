$(document).ready(function(){
	
	hasPerspective	= Modernizr.csstransforms3d;
	var par = true;
	if(hasPerspective){
		$(".te-wrapper").on({
			'webkitAnimationStart' : function( event ) {
				
			},
			'webkitAnimationEnd'   : function( event ) {
				$(".te-front").hide();
			}
		});
		$(".submenu-bezpecnost-is").on({
			'webkitAnimationStart' : function( event ) {
				console.log("zaciatok");
			},
			'webkitAnimationEnd'   : function( event ) {
				$(this).css("visibility","hidden");
			}
		});
		$(".submenu-it-riesenia").on({
			'webkitAnimationStart' : function( event ) {
				console.log("zaciatok");
			},
			'webkitAnimationEnd'   : function( event ) {
				$(this).css("visibility","hidden");
			}
		});
		$(".submenu-technicka-bezpecnost").on({
			'webkitAnimationStart' : function( event ) {
				console.log("zaciatok");
			},
			'webkitAnimationEnd'   : function( event ) {
				$(this).css("visibility","hidden");
			}
		});
		$(".submenu-aktuality").on({
			'webkitAnimationStart' : function( event ) {
				console.log("zaciatok");
			},
			'webkitAnimationEnd'   : function( event ) {
				$(".submenu-bezpecnost-is").hide();
				$(".submenu-it-riesenia").hide();
				$(".submenu-technicka-bezpecnost").hide();
				$(this).hide();
				$(".o-spolocnosti").addClass("active");
			}
		});
	}
	$(".ospol").click(function(){
		$(this).addClass("active");
		$(".te-transition").addClass("te-rotation4");
		$(".te-transition").addClass("te-show");
		if(par){
			$(".te-front").hide();
			$(".te-back").show();
			par = false;
		}else{
			$(".te-front").show();
			$(".te-back").hide();
			par = true;
		}
	});
	$(".sub-o-nas li").click(function(){
		$(".sub-o-nas li").removeClass("active");
		$(this).addClass("active");
		$(".submenu-bezpecnost-is").addClass("disable1");
		$(".submenu-it-riesenia").addClass("disable2");
		$(".submenu-technicka-bezpecnost").addClass("disable3");
		$(".submenu-aktuality").addClass("disable4");
	});


$(".disable1").on('webkitAnimationEnd', function(){ $(this).hide(); });

});


