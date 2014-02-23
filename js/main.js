
var contentwrapIsShow = false;
var canAnimate = true;
var actualLang = "sk"; 
var isOnreference = false;
var click = (navigator.userAgent.search('Mobile') > 0 ) ? "touchstart" : "click";

$(document).ready(function(){
initLang(); //nacitanie jazyku
initHlavnySlider(); 

//ios7 fix
if (navigator.userAgent.match(/iPad;.*CPU.*OS 7_\d/i)) {
   $('bottom-menu-wrapper').addClass('ipad ios7');
}


$(".swiper-container").css("height",300);
   var mySwiper = new Swiper('.refs-scroll', {
	    scrollContainer : false,
	    mousewheelControl : true,
	    mode:'vertical',
	    scrollbar: {
	    container :'.swiper-scrollbar',
	    hide: true,
	    draggable: false,  
	    }
  });
                          
  initOknoSReferenciami();
  zobrazenieSipokNaPrepinanieReferencii();
  initReferencieMenu(); //zistenie poctu zaznamov v menu a priradenie skrolovatka
  initSwipebox();
  kliknutieNaMenu();
  
  $(".kazdaOriginal").bind(click,function(){
		  $( ".swiper-child" ).remove();
		  $( ".offset" ).load( "includes/referencie/bayer/kazda-sme-original.php" ,function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
				  initSwipebox();
				  $( ".play-btn" ).show();
			  });
		  });
  });
  $(".referencie h2").bind(click,function(){
		  $( ".swiper-child" ).remove();
		  $( ".playbutton" ).hide();
		  $( ".offset" ).load( "includes/klienti.php",{
			  ajaxCall:true
		  },
		  function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
				  initSwipebox();
				  $( ".play-btn" ).show();
			  });
			  
		  })//.hide().fadeIn(800);
	  //});
  });
  $(".newsletter").bind(click,function(){
	  //$( ".swiper-child" ).fadeOut(500,function(){
		  $( ".swiper-child" ).remove();
		  $( ".playbutton" ).hide();
		  $( ".offset" ).load( "includes/referencie/sovva/newsletters-scope.php",function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
				  initSwipebox();
				  $( ".play-btn" ).show();
			  });
			  
		  })//.hide().fadeIn(800);
	  //});
  });
  $(".vyrocie").bind(click,function(){
	  //$( ".swiper-child" ).fadeOut(500,function(){
		  $( ".swiper-child" ).remove();
		  $( ".playbutton" ).hide();
		  $( ".offset" ).load( "includes/referencie/bayer/vyrocie-150-rokov.php",function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
				  initSwipebox();
				  $( ".play-btn" ).show();
			  });
			  
		  })//.hide().fadeIn(800);
	 // });
  });
  $(".vyskum09").bind(click,function(){
	  //$( ".swiper-child" ).fadeOut(500,function(){
		  $( ".swiper-child" ).remove();
		  $( ".playbutton" ).hide();
		  $( ".offset" ).load( "includes/referencie/sovva/noc-vyskumnikov-2009.php",function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
				  initSwipebox();
				  $( ".play-btn" ).show();
			  });
			  
		  })//.hide().fadeIn(800);
	 // });
  });
  $(".vyskum11").bind(click,function(){
	  //$( ".swiper-child" ).fadeOut(500,function(){
		  $( ".swiper-child" ).remove();
		  $( ".playbutton" ).hide();
		  $( ".offset" ).load( "includes/referencie/sovva/noc-vyskumnikov-2011.php",function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
				  initSwipebox();
				  $( ".play-btn" ).show();
			  });
			  
		  })//.hide().fadeIn(800);
	 // });
  });
  $(".vyskum12").bind(click,function(){
	  //$( ".swiper-child" ).fadeOut(500,function(){
		  $( ".swiper-child" ).remove();
		  $( ".playbutton" ).hide();
		  $( ".offset" ).load( "includes/referencie/sovva/noc-vyskumnikov-2012.php",function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
				  initSwipebox();
				  $( ".play-btn" ).show();
			  });
		  });//.hide().fadeIn(800);
	 // });
  });
  $(".vyskum13").bind(click,function(){
	 // $( ".swiper-child" ).fadeOut(500,function(){
		  $( ".swiper-child" ).remove();
		  $( ".playbutton" ).hide();
		  
		  $( ".offset" ).load( "includes/referencie/sovva/noc-vyskumnikov-2013.php",function(){
			  $( ".play-btn" ).hide();
			  $( ".swiper-child .last" ).imageready(function() {
				  initOknoSReferenciami();
				  initSwipebox();
				  $( ".play-btn" ).show();
			  });
		  })//.hide().fadeIn(800);
	  //});
  });

  $(".skLang a").click(function(){
    if(actualLang == "en"){
      actualLang = "sk";
      setLang();  
    }          
  });
  $(".enLang a").click(function(){
    if(actualLang == "sk"){
      actualLang = "en";
      setLang();  
    }          
  });
});

function initReferencieMenu(){
	vyskaChild = 0;
	$(".refs-scroll .parentMenu").each(function( indexParent, elementParent ){
		vyskaChild += 18;
		vyskaChild += vypocitajVyskuKlietaVMenu( $("ul",this) );
	});
	console.log((($(".offset").height()-50) - vyskaChild));
	if((($(".offset").height()-50) - vyskaChild) > 0 ){
		$(".swiper-scrollbar").hide();
	}
}

function vypocitajVyskuKlietaVMenu( ulClass ){
	vyskaChild = 0;
	$(ulClass).find( "li" ).each(function( indexChild, elementChild ){
		vyskaChild += 18;
	});
	return vyskaChild;
}

function initLang(){
  if(actualLang == "sk"){
    $(".o-nas").append(lang.sk.onas.content).fadeIn();
    $(".sluzby").append(lang.sk.sluzby.content).fadeIn();
    $(".kontakt").append(lang.sk.kontakt.content).fadeIn();
  }else{
    $(".o-nas").append(lang.en.onas.content).fadeIn();
    $(".sluzby").append(lang.en.sluzby.content).fadeIn();
    $(".kontakt").append(lang.en.kontakt.content).fadeIn();
  } 
}

function kliknutieNaMenu(){
$('.parentMenu span').bind(click,function() {
  $(".parentMenu ul").css({'position':'relative','height':'0px'});
  //$(".parentMenu ul").parent().find("ul").removeClass("visible");
  $(".parentMenu").removeClass("active");
  if($(this).parent().find("ul").hasClass("visible")){
	  console.log("volsoVisible");
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
	   //loop : true,
	   onSlideChangeEnd : function() {
		   $(".menuItem").removeClass("active");
		   $(".referencie-content .referencie-custom-slide").removeClass("animate");
		   $(".bottom-menu-wrapper li[slide = " + parentSwiper.activeLoopIndex + "]").addClass("active");
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
				   height: "100%",
			   }, 
			   800,  function() { 
				   console.log(isOnreference);
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
		resizeReInit : true,
		onSlideClick: function(){
			//console.log(this.clickedSlideIndex);
		},
		onSlideChangeEnd : function(swiper){
			zobrazenieSipokNaPrepinanieReferencii();
			console.log(childSwiper.activeLoopIndex);
			console.log(swiper);
		},
		//useCSS3Transforms: true
	  });
	  
	  $('.bx-next-ref').click(function(){
		  childSwiper.swipeNext();
		 
	  });
	  $('.bx-prev-ref').click(function(){
		  childSwiper.swipePrev();
		  
	  });
}

function zobrazenieSipokNaPrepinanieReferencii(){
	if($(".referencie .swiper-slide-visible").hasClass("last")){
			console.log("vosloLAST");
		  $(".bx-next-ref").hide();
	}else{
		console.log("vosloLASTelse");  
		$(".bx-next-ref").show();
	}
	if($(".referencie .swiper-slide-visible").hasClass("first")){
		console.log("vosloFIRST"); 
		$(".bx-prev-ref").hide();
	}else{
		console.log("vosloFIRSTelse");
		$(".bx-prev-ref").show();
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
	$(".swipebox").swipebox({
		useCSS : true, // false will force the use of jQuery for animations
		hideBarsDelay : 3000, // 0 to always show caption and action bar
		videoMaxWidth : 1140, // videos max width
	});
}

function setLang(){
  if(actualLang == "sk"){
	  $(".divider").fadeOut(500).fadeIn(500); 
	  
    $(".o-nas .content").fadeOut(500,function(){
      $(".o-nas .content").remove();
      $(".o-nas").append(lang.sk.onas.content).hide().fadeIn(500);
    });
    $(".onasMenu a").fadeOut(500,function(){
    	$(".onasMenu a").html(lang.sk.onas.title).hide().fadeIn(500);
    });
    $(".sluzby .content").fadeOut(500,function(){
      $(".sluzby .content").remove();
      $(".sluzby").append(lang.sk.sluzby.content).hide().fadeIn(500);
    });
    $(".sluzbyMenu a").fadeOut(500,function(){
    	$(".sluzbyMenu a").html(lang.sk.sluzby.title).hide().fadeIn(500);
    });
    $(".kontakt .content").fadeOut(500,function(){
      $(".kontakt .content").remove();
      $(".kontakt").append(lang.sk.kontakt.content).hide().fadeIn(500);
    });
    $(".kontaktMenu a").fadeOut(500,function(){
    	$(".kontaktMenu a").html(lang.sk.kontakt.title).hide().fadeIn(500);
    });
    $(".referencieMenu a").fadeOut(500,function(){
    	$(".referencieMenu a").html(lang.sk.referencie.title).hide().fadeIn(500);
    });
    $(".langClass").removeClass("active");
    $(".skLang").addClass("active");
  }else{
	$(".divider").fadeOut(500).fadeIn(500);
	
    $(".o-nas .content").fadeOut(500,function(){
       $(".o-nas .content").remove();
       $(".o-nas").append(lang.en.onas.content).hide().fadeIn(500);
    });
    $(".onasMenu a").fadeOut(500,function(){
    	$(".onasMenu a").html(lang.en.onas.title).hide().fadeIn(500);
    });
    $(".sluzby .content").fadeOut(500,function(){
      $(".sluzby .content").remove();
       $(".sluzby").append(lang.en.sluzby.content).hide().fadeIn(500);
    });
    $(".sluzbyMenu a").fadeOut(500,function(){
    	$(".sluzbyMenu a").html(lang.en.sluzby.title).hide().fadeIn(500);
    });
    $(".kontakt .content").fadeOut(500,function(){
      $(".kontakt .content").remove();
       $(".kontakt").append(lang.en.kontakt.content).hide().fadeIn(500);
    });
    $(".kontaktMenu a").fadeOut(500,function(){
    	$(".kontaktMenu a").html(lang.en.kontakt.title).hide().fadeIn(500);
    });
    $(".referencieMenu a").fadeOut(500,function(){
    	$(".referencieMenu a").html(lang.en.referencie.title).hide().fadeIn(500);
    });
    $(".langClass").removeClass("active");
    $(".enLang").addClass("active");
  }
}
var lang = {"sk": 
              {
                "sluzby": {
                            "title" : "služby",
                            "content" : "<div class='content'>" +
                                        "<h2>Služby</h2>" + 
              	 	                       "<p><span>MÉDIÁ:</span> STRATÉGIA | PLÁNOVANIE | NÁKUP | PARTNERSTVÁ | ANALÝZY | PORADENSTVO</p>" +	
              	 	                       "<p></p>" +
              	 	                       "<p><span>KREATÍVA:</span> VIZUÁLNA STRATÉGIA | CORPORATE IDENTITY A LOGOTYP | TVORBA KAMPANÍ | WEBDESIGN</p>"	+
              	 	                       "<p></p>" +
              	 	                       "<p><span>MARKETING</span> STRATÉGIA | NETRADIČNÝ MARKETING (GUERRILLA, AMBIENT, VIRAL, ATĎ)</p>" +
              	 	                       "<p></p>" +
              	 	                       "<p><span>EVENT MARKETING</span></p>" +
                                            "</div>"
                          },   
                "onas": {
                          "title" : "o nás",
                          "content" :   "<div class='content'>" +
                                        "<h2>O nás</h2>" +
                	  	                  "<p>Sme mladá ale dynamicky sa rozvíjajúca agentúra</p>" +
                	  	                  "<p>poskytujúca full servis v oblasti reklamy,</p>" + 
                	  	                  "<p>marketingu a médií</p>" +	
                	  	                  "<p></p>" +
                		                  "<p>Máme plnú hlavu nápadov, nebojíme sa inovácií</p>" +
                		                  "<p>a správnej miery rizika</p>" +	
                		                  "<p></p>"+  
                		                  "<p>Tešíme sa na ďalšie výzvy.</p>" +
                                          "</div>"  
                        },
                "referencie": {
                    "title" : "referencie",
                    "content" :   "<div class='content'>" +
                                  "<h2>O nás</h2>" +
          	  	                  "<p>Sme mladá ale dynamicky sa rozvíjajúca agentúra poskytujúca full servis v oblasti reklamy, marketingu a médií</p>" +	
          		                    "<p>Máme plnú hlavu nápadov, nebojíme sa inovácií a správnej miery rizika</p>" +	  
          		                    "<p>Tešíme sa na ďalšie výzvy.</p>" +
                                      "</div>"  
                		},        
                "kontakt" : {
                              "title" : "kontakt",
                              "content" :   "<div class='content'>" +
                                            "<h2>Kontakt</h2>" +
                                      	  	"<p><strong>gooseberry, s.r.o.</strong></br>" +
                                        		"Jakubovo námestie 14, 811 09 Bratislava</br>" +
                                        		"tel.: +421 2 2072 0083, tel.: +421 905 484 035, +421 918 855 348</br>" +
                                        		"e-mail: <a href='mailto:info@gooseberry.sk'>info@gooseberry.sk</a>" +
                                        		"</p>" +
                                        		"<p><strong>Fakturačné údaje:</strong></br> " +
                                        		"gooseberry, s.r.o., Bohorova 3, 851 01 Bratislava</br>" +
                                        		"zapísaná v Obch. registri Okresný súd Bratislava 1., Vložka číslo: 60284/B</br>" +
                                        		"IČO: 44957521, DIČ: 2022883247, IČ DPH: SK2022883247</br>" +
                                        		"Bankové spojenie: Tatra banka, a.s.</br>" +
                                        		"Číslo účtu: 2621194353/1100" +
                                        		"</p>" +
                                            "</div>"
                            }
              },
            "en" :
              {
                "sluzby": {
                            "title" : "services",
                            "content" :   "<div class='content'>" +
                                          "<h2>Services</h2>" + 
              	 	                       "<p>EN <span>MEDIA:</span> PLANNING | PURCHASE | PARTNERSHIPS | ANALYSIS | ADVICE</p>" +	
              	 	                       "<p></p>" +
              	 	                       "<p><span>KREATÍVA:</span> EGY | CORPORATE IDENTITY AND LOGOTYPE | ARTCREATING CAMPAIGNS | WEBDESIGN</p>" +
              	 	                       "<p></p>" +
              	 	                       "<p><span>MARKETING</span> NTRADITIONAL MARKETING (GUERRILLA, AMBIENT, VIRAL, ETC.)</p>" +
              	 	                       "<p></p>" +
              	 	                       "<p><span>EVENT MARKETING</span></p>" +
              	 	                       "<p><span>PRODUCTION</span></p>" +
                                            "</div>"
                          },   
                "onas": {
                          "title" : "about us",
                          "content" :   "<div class='content'>" +
                                        "<h2>About us</h2>" +
                	  	                  "<p>By combining of several years of experiences on the field of advertising and marketing young,</p>" +	
                		                    "<p>full of energy and originality, dynamically growing full-service advertising agency was established in 2009..</p>" +	  
                                            "</div>"  
                        },
                "referencie": {
                    "title" : "reference"
                		},
                "kontakt" : {
                              "title" : "contact",
                              "content" :   "<div class='content'>" +
                                            "<h2>contact</h2>" +
                                      	  	"<p><strong>gooseberry, s.r.o.</strong></br>" +
                                        		"Jakubovo námestie 14, 811 09 Bratislava</br>" +
                                        		"phone: +421 2 2072 0083, tel.: +421 905 484 035, +421 918 855 348</br>" +
                                        		"e-mail: <a href='mailto:info@gooseberry.sk'>info@gooseberry.sk</a>" +
                                        		"</p>" +
                                        		"<p><strong>Invoice address:</strong></br> " +
                                        		"gooseberry, s.r.o., Bohorova 3, 851 01 Bratislava</br>" +
                                        		"zapísaná v Obch. registri Okresný súd Bratislava 1., Vložka číslo: 60284/B</br>" +
                                        		"IČO: 44957521, DIČ: 2022883247, IČ DPH: SK2022883247</br>" +
                                        		"Bankové spojenie: Tatra banka, a.s.</br>" +
                                        		"Číslo účtu: 2621194353/1100" +
                                        		"</p>" +
                                            "</div>"
                            }
              }  
};




