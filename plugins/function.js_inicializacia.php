<?php
ini_set("display_errors", 1);
#CMS - CMS Made Simple
#(c)2004 by Ted Kulp (wishy@users.sf.net)
#This project's homepage is: http://www.cmsmadesimple.org
#
#This program is free software; you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation; either version 2 of the License, or
#(at your option) any later version.
#
#This program is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#You should have received a copy of the GNU General Public License
#along with this program; if not, write to the Free Software
#Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA

function smarty_function_js_inicializacia(){
    
    $sk = array();
    $en = array();  
    $db = cmsms()->GetDb();
    $dbresult = $db->Execute("SELECT cp.content, cp.prop_name, c.content_alias, c.menu_text, c.content_name from cms_content c left join cms_content_props cp on cp.content_id = c.content_id and (cp.prop_name = 'obsah_en' or cp.prop_name = 'content_en') where c.parent_id=-1 and c.content_alias!='home' and c.content_alias!='referencie' order by c.item_order",array());
    while ($dbresult && $row=$dbresult->FetchRow()){ 
      if($row['prop_name'] == "content_en"){
        $sk[str_replace("-","",$row['content_alias'])]["title"] = $row['content_name'];
        $sk[str_replace("-","",$row['content_alias'])]["content"] = "<div class='content'>".$row['content']."</div>";
      }
      if($row['prop_name'] == "obsah_en"){
        $en[str_replace("-","",$row['content_alias'])]["title"] = $row['menu_text'];
        $en[str_replace("-","",$row['content_alias'])]["content"] =  "<div class='content'>".$row['content']."</div>";        
      }
    }
    $klientName = "";
    $iteration = 0;
    $refMenuSk = array();
    $refMenuEn = array();
    $dbresult = $db->Execute('SELECT cc.content_name AS klient_name, cc.menu_text AS klient_name_en,cc.content_alias as klient_alias, ccc.content_alias as projekt_alias, ccc.content_name AS projekt_name_sk, ccc.menu_text AS projekt_name_en FROM cms_content c RIGHT JOIN cms_content cc ON cc.parent_id = c.content_id LEFT JOIN cms_content ccc ON ccc.parent_id = cc.content_id WHERE c.content_alias =  "referencie" ORDER BY cc.item_order'); 
    while ($dbresult && $row=$dbresult->FetchRow()){
    	if($klientName != $row['klient_name']){
                $refMenuSk['klient'][str_replace("-","",$row['klient_alias'])] = $row['klient_name'];
                $refMenuEn['klient'][str_replace("-","",$row['klient_alias'])] = $row['klient_name_en'];
                $klientName = $row['klient_name'];
              }
              $refMenuSk['projekt'][str_replace("-","",$row['projekt_alias'])] = $row['projekt_name_sk'];
              $refMenuEn['projekt'][str_replace("-","",$row['projekt_alias'])] = $row['projekt_name_en'];
              $iteration++;        	
   	}
	//print_r($refMenuSk);
	//exit;
    $json = array('sk' => $sk, 'en' => $en); 
    ?>
    <script type='text/javascript'>
    var lang = <?php echo json_encode($json) ?>;
    var contentwrapIsShow = false;
var canAnimate = true;
var actualLang = "sk"; 
var isOnreference = false;
var click = (navigator.userAgent.search('Mobile') > 0 ) ? "touchstart" : "click";
var ieVersion = 10; 
if (/MSIE (\d+\.\d+);/.test(navigator.userAgent)){ //test for MSIE x.x;
  ieVersion=new Number(RegExp.$1); // capture x.x portion and store as a number
}
                              
$(document).ready(function(){ 
initLang(); //nacitanie jazyku     
initHlavnySlider(); 
if (navigator.userAgent.match(/iPad;.*CPU.*OS 7_\d/i)) {
    $('.bottom-menu-wrapper, .content').addClass('ipad ios7');
}
$(".swiper-container").css("height",300);
   var mySwiper = new Swiper('.refs-scroll', {
	    scrollContainer : true,
	    mousewheelControl : true,
	    mode:'vertical',
	    scrollbar: {
	    container :'.swiper-scrollbar',
	    hide: false,
	    draggable: false
	    },
   		onFirstInit : function(){
			//$(".loader").css("display","none");
	    }
  });
  if(ieVersion < 9){
  $( ".offset" ).load( "lib/generate_ref.php",{
        ajaxCall:true
		  },
		  function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
          zobrazenieSipokNaPrepinanieReferencii();
				  $( ".play-btn" ).show();
			  });
		  });  
  }                                                                              
  initOknoSReferenciami();
  zobrazenieSipokNaPrepinanieReferencii();
  initReferencieMenu(); //zistenie poctu zaznamov v menu a priradenie skrolovatka
  initSwipebox();
  kliknutieNaMenu();  
  
  $(".referencie h2").bind(click,function(){
      $(".parentMenu ul").css({'position':'relative','height':'0px'});
      $(".parentMenu").removeClass("active");
      $(".parentMenu ul li").removeClass("active");
      
		  $( ".swiper-child" ).remove();
		  $( ".playbutton" ).hide();
		  $( ".offset" ).load( "lib/generate_ref.php",{
        ajaxCall:true
		  },
		  function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
          zobrazenieSipokNaPrepinanieReferencii();
				  $( ".play-btn" ).show();
			  });
		  })
  });
          
  <?
  $db = cmsms()->GetDb();
  $dbresult2 = $db->Execute('SELECT cc.content_name AS klient_name, ccc.content_alias as projekt_alias, ccc.content_name AS projekt_name_sk, ccc.menu_text AS projekt_name_en FROM cms_content c RIGHT JOIN cms_content cc ON cc.parent_id = c.content_id RIGHT JOIN cms_content ccc ON ccc.parent_id = cc.content_id WHERE c.content_alias =  "referencie" ORDER BY cc.item_order'); 
  while ($dbresult2 && $row2=$dbresult2->FetchRow()){
  ?>
    $('.<? echo str_replace("-","",$row2["projekt_alias"])?>').bind(click,function(){
	  $( ".swiper-child" ).remove();
	  $( ".offset" ).load( "lib/generate_ref.php",{
      project : "<? echo $row2['projekt_alias'] ?>",
      ajaxCall:true 
      },function(){ 
		  $( ".play-btn" ).hide();
		    initOknoSReferenciami();
      	zobrazenieSipokNaPrepinanieReferencii();
		  $( ".play-btn" ).show();
	  });
    });
  <?
  }

 
  ?>
  $(".skLang a").click(function(){
    if(actualLang == "en"){
      actualLang = "sk";
      setLang(); 
      preinicializuj(); 
    }          
  });
  $(".enLang a").click(function(){
    if(actualLang == "sk"){
      actualLang = "en";
      setLang();
      preinicializuj();  
    }          
  }); 
});  

function initReferencieMenu(){
	vyskaChild = 0;
	$(".refs-scroll .parentMenu").each(function( indexParent, elementParent ){
		vyskaChild += 18;
		vyskaChild += vypocitajVyskuKlietaVMenu( $("ul",this) ); 
	});
	if((($(".offset").height()-50) - vyskaChild) > 0 ){
		$(".swiper-scrollbar").hide();
	}
}

function vypocitajVyskuKlietaVMenu( ulClass ){   
	vyskaChild = 0;                                                   
	$(ulClass).find( "li" ).each(function( indexChild, elementChild ){
    if($(elementChild).attr("class") != "empty"){
		  vyskaChild += 18;
    }
	});        
	return vyskaChild;
}

function initLang(){
  if(actualLang == "sk"){
  <?
  foreach($sk as $key=>$value){
      ?>
      $('<? echo ".".$key ?> .content').append(<? echo "lang.sk.".$key.".content"?>).fadeIn();
      <?
  }
  ?>
  }else{
  <?
  foreach($en as $key=>$value){
      ?>
      $('<? echo ".".$key ?> .content').append(<? echo "lang.en.".$key.".content"?>).fadeIn();
      <?
  }
  ?>
  }
}
function setLang(){
  $(".divider").fadeOut(500).fadeIn(500);
  $(".langClass").removeClass("active");
  $.ajax({
	  url: "lib/set_lang.php",
	  type: "POST",
	  data: { jazyk: actualLang }
	}).done(function() {
	});
  if(actualLang == "sk"){ 
    <?
    foreach($sk as $key=>$value){
        ?>
        $(".<? echo $key ?> .content").fadeOut(500,function(){
          $(".<? echo $key ?> .content").remove();
          $(".<? echo $key ?>").append(<? echo "lang.sk.".$key.".content"?>).hide().fadeIn(500);
        });
        $(".<? echo $key ?>Menu a").fadeOut(500,function(){
          $(".<? echo $key ?>Menu a").html(<? echo "lang.sk.".$key.".title"?>).hide().fadeIn(500);
        });
        <?
    }
    if(isset($refMenuSk['projekt']) && isset($refMenuSk['klient'])){
	     foreach($refMenuSk['projekt'] as $key=>$value){
			if($key != null){
      ?>
			$(".<? echo $key ?> .childSubmenu").fadeOut(500,function(){
	        $(".<? echo $key ?> .childSubmenu").html("<? echo $value ?>").hide().fadeIn(500);
	        });
			<?php		
      }
	    }
	     foreach($refMenuSk['klient'] as $key=>$value){
			?>
			$(".<? echo $key ?> .parentSubmenu").fadeOut(500,function(){
	        $(".<? echo $key ?> .parentSubmenu").html("<? echo $value ?>").hide().fadeIn(500);
	        });
			<?php		
	    } 
    }
    ?>
    $(".referencieMenu a").fadeOut(500,function(){
    	$(".referencieMenu a").html("referencie").hide().fadeIn(500);
    });
    $(".referencie-menu h2").fadeOut(500,function(){
    	$(".referencie-menu h2").html("Referencie").hide().fadeIn(500);
    });
    $( ".mediaClass" ).each(function( index ) {
  	  $(this).attr("title", $(this).attr("name_sk"));
  	});
    $(".skLang").addClass("active");
  }else{
	  <?
    foreach($en as $key=>$value){
        ?>
        $(".<? echo $key ?> .content").fadeOut(500,function(){
          $(".<? echo $key ?> .content").remove();
          $(".<? echo $key ?>").append(<? echo "lang.en.".$key.".content"?>).hide().fadeIn(500);
        });
        $(".<? echo $key ?>Menu a").fadeOut(500,function(){
          $(".<? echo $key ?>Menu a").html(<? echo "lang.en.".$key.".title"?>).hide().fadeIn(500);
        });
        <?
    }
    if(isset($refMenuEn['projekt']) && isset($refMenuEn['klient'])){
	    foreach($refMenuEn['projekt'] as $key=>$value){
			if($key != null){
      ?>
			$(".<? echo $key ?> .childSubmenu").fadeOut(500,function(){
		          $(".<? echo $key ?> .childSubmenu").html("<? echo $value ?>").hide().fadeIn(500);
	        });
			<?php		
      }
	    }
	    foreach($refMenuEn['klient'] as $key=>$value){
			?>
			$(".<? echo $key ?> .parentSubmenu").fadeOut(500,function(){
		          $(".<? echo $key ?> .parentSubmenu").html("<? echo $value ?>").hide().fadeIn(500);
	        });
			<?php		
	    }
    }
    ?>
    $(".referencieMenu a").fadeOut(500,function(){
    	$(".referencieMenu a").html("references").hide().fadeIn(500);
    }); 
    $(".referencie-menu h2").fadeOut(500,function(){
    	$(".referencie-menu h2").html("References").hide().fadeIn(500);
    });
    $( ".mediaClass" ).each(function( index ) {
    	  $(this).attr("title", $(this).attr("name_en"));
    });
    
    $(".enLang").addClass("active");
  }
}
function kliknutieNaMenu(){
$('.parentMenu span').bind(click,function() { 
  $(".parentMenu ul").css({'position':'relative','height':'0px'});
  $(".parentMenu").removeClass("active");
  if($(this).parent().find("ul").hasClass("visible")){
	  $(this).parent().addClass("active");
	  $(this).parent().find("ul").css({'position':'relative','height':'0px'});
	  $(this).parent().find("ul").removeClass("visible");
	  $(this).parent().find("ul").addClass("invisible");
  }else{
	  $(".parentMenu ul").parent().find("ul").removeClass("visible");
	  $(this).parent().addClass("active");
	  $(this).parent().find("ul").css({'position':'relative','visibility':'visible','height':vypocitajVyskuKlietaVMenu($(this).parent().find("ul"))+"px"});
	  $(this).parent().find("ul").removeClass("invisible");
	  $(this).parent().find("ul").addClass("visible");
	  } 
  });
  $(".parentMenu ul li").bind(click,function() {
	  $(".parentMenu ul li").removeClass("active");
	  $(this).addClass("active");
  });
}

function initHlavnySlider(){
	showPrev = false;
	showNext = false;
	var parentSwiper =  new Swiper('.swiper-parent',{
       speed:800, 
       autoResize : (navigator.userAgent.search('Mobile') > 0 ) ? false : true,
	   resizeReInit : true,
	   loop : true,    
     followFinger: false,
	   onSlideChangeEnd : function() {
		   $(".menuItem").removeClass("active");
		   $(".referencie-content .referencie-custom-slide").removeClass("animate");
		   if(ieVersion > 9){
        $(".bottom-menu-wrapper li[slide = " + parentSwiper.activeLoopIndex + "]").addClass("active");
		   }      
		   if($(".swiper-slide-active .container").hasClass("referencie")){
			   if($(".bx-prev-ref").css("display") == "block"){
				   $(".bx-prev-ref").hide();
				   showPrev = true;
			   }	 
			   if($(".bx-next-ref").css("display") == "block"){
				   $(".bx-next-ref").hide();
				   showNext = true;
			   }
			   $(".swiper-container, .swiper-slide").animate({
				   height: $(".referencie").height()
			   }, 800, function() {
				   $(".swiper-container").addClass("referencie-content");
			   });
        
			   $(".main-content-wrapper").animate({
				   height: "100%"
			   }, 
			   800,  function() {  
				   if(isOnreference){
					   $(".referencie-content .referencie-custom-slide").addClass("refresh");
				   }
				   $(".referencie-content .referencie-custom-slide").addClass("animate");
				   if(showPrev) $(".bx-prev-ref").delay(300).show();
				   if(showNext) $(".bx-next-ref").delay(300).show();
				   isOnreference = true;
			   });
			   
		   }else{	
			   $(".referencie-content .referencie-custom-slide").removeClass("refresh");
			   $(".swiper-container").removeClass("referencie-content");
			   $(".swiper-container, .swiper-slide, .swiper-wrapper").css("height",300);
			   $(".main-content-wrapper").animate({
				   height: 300 + 44 + $(".bottom-menu-wrapper").height()
			   }, 800);
		   }
	   },
     onTouchEnd : function(){
			zobrazenieSipokNaPrepinanieReferencii();
		}
  });
	$('.bx-next').click(function(){
		parentSwiper.swipeNext();
	});
	$('.bx-prev').click(function(){
		parentSwiper.swipePrev();
	});
//------------------------ vysuvanie BEGIN ----------------------//
  $('.main-content-wrapper').css("bottom",-$(".main-content-wrapper").height());
  $(".menuItem").click(function(){
	  parentSwiper.swipeTo($(this).attr("slide"),contentwrapIsShow ? 800 : 1);
	  if(!contentwrapIsShow){
		  $('.main-content-wrapper').stop(true, false).animate({
			  'bottom': '0px',
          	'height': ($(".swiper-slide-active .container").hasClass("referencie")) ? "100%" : 388	  
		  }, 800, function(){   
      
      ///only for IE
      if(ieVersion > 5){
        if($(".swiper-slide-active .container").hasClass("referencie")){
          if($(".bx-prev-ref").css("display") == "block"){
  				   $(".bx-prev-ref").hide();
  				   showPrev = true;
  			   }	 
  			   if($(".bx-next-ref").css("display") == "block"){
  				   $(".bx-next-ref").hide();
  				   showNext = true;
  			   }
  			   $(".swiper-container, .swiper-slide").animate({
  				   height: $(".referencie").height()
  			   }, 800, function() {
  				   $(".swiper-container").addClass("referencie-content");
  			   });
          
  			   $(".main-content-wrapper").animate({
  				   height: "100%"
  			   }, 
  			   800,  function() {  
  				   if(isOnreference){
  					   $(".referencie-content .referencie-custom-slide").addClass("refresh");
  				   }
  				   $(".referencie-content .referencie-custom-slide").addClass("animate");
  				   if(showPrev) $(".bx-prev-ref").delay(300).show();
  				   if(showNext) $(".bx-next-ref").delay(300).show();
  				   isOnreference = true;
  			   }); 
        }
        }
         ///only for IE
		  });
		  contentwrapIsShow = true;
    }
    $(".menuItem").removeClass("active");
    $(this).addClass("active");
    
  }); 
  $(".content-top-bar img").click(function(){
	  rollDownContent();
  }); 
  $(".content-top-bar").swipe({
	  swipeDown:function(event, distance, duration, fingerCount) {
	    rollDownContent();
	  }
	});
  $(".bottom-menu-wrapper").swipe({
	  swipeUp:function(event, distance, duration, fingerCount) {
	    if(!contentwrapIsShow){
		  $('.main-content-wrapper').stop(true, false).animate({
			  'bottom': '0px',
          	'height': ($(".swiper-slide-active .container").hasClass("referencie")) ? "100%" : 388	  
		  }, 800, function(){
			  ///centerRef();
		  });
		  contentwrapIsShow = true;
    }
	  }
	});
  //------------------------ vysuvanie END ----------------------//  
}

function initOknoSReferenciami(){ 
  var childSwiper = new Swiper('.swiper-child',{
	    mode: 'horizontal',
	    slidesPerView: 'auto',
	    autoResize : true,
      //followFinger: false,
      //moveStartThreshold:190,
      
		resizeReInit : true,
		onSlideClick: function(){
			//console.log(this.clickedSlideIndex);
		},
    onTouchEnd : function(){
			zobrazenieSipokNaPrepinanieReferencii();
		},
		onSlideChangeEnd : function(){
			zobrazenieSipokNaPrepinanieReferencii();
		//useCSS3Transforms: true
    }
	  });
     $('.bx-next-ref').click(function(){ 
		  childSwiper.swipeNext();
		 
	  });
	  $('.bx-prev-ref').click(function(){ 
		  childSwiper.swipePrev();
		  
	  }); 	
}

function zobrazenieSipokNaPrepinanieReferencii(){  
  
  sliderLength = $(".swiper-child .swiper-slide").length;       
  if($(".swiper-child .swiper-slide").eq(0).hasClass("swiper-slide-active")){
    $(".bx-prev-ref").hide();
  }else{
		$(".bx-prev-ref").show();
	}
  
  //if($(".swiper-child .swiper-slide").eq(sliderLength-1).hasClass("swiper-slide-visible")){
  //  $(".bx-next-ref").hide();
  //  console.log("maPoslednu");
  //}else{
	//	$(".bx-next-ref").show();
	//}
  actualIndex = 0;
  $(".swiper-child .swiper-slide").each(function(index){
    actualIndex++;
    if($(this).attr("class").indexOf("swiper-slide-active") !== -1){
      slidesCount = 0;
      for(i = actualIndex; i <= sliderLength; i++){
        if($(".swiper-child .swiper-slide").eq(i).hasClass("image-wrap")){
          slidesCount++;  
        }
        if($(".swiper-child .swiper-slide").eq(i).hasClass("video-wrap")){
          slidesCount = slidesCount+2;  
        }        
      }
      if($(this).attr("class").indexOf("image-wrap") !== -1){
        if(slidesCount > 3){
          $(".bx-next-ref").show();  
        }else{
          $(".bx-next-ref").hide();
        }    
      }
      if($(this).attr("class").indexOf("video-wrap") !== -1){
        if(slidesCount > 2){
          $(".bx-next-ref").show();  
        }else{
          $(".bx-next-ref").hide();
        }
      }  
    }
  });
  
  
  if($(".swiper-wrapper").hasClass("emptyFiles")){
    $(".bx-next-ref").hide();
    $(".bx-prev-ref").hide();
  }
}
function rollDownContent(){
  if(contentwrapIsShow){
      $('.main-content-wrapper').animate({
          bottom: -$(".main-content-wrapper").height(),
          height: 388
      }, 800,function(){
    	  $(".menuItem").removeClass("active"); 
      });
      contentwrapIsShow = false;
  }  
}

function initSwipebox(){
    var $swipebox = $(".swipebox").swipebox({
		//useCSS : true, // false will force the use of jQuery for animations
		hideBarsDelay : 3000, // 0 to always show caption and action bar
		videoMaxWidth : 1140 // videos max width
	   });
  $swipebox.refresh();
}
    </script>   
    <?
}
?>
