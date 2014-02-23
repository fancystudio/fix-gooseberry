<div class="swiper-container swiper-parent">
	   <div class="swiper-wrapper">
  <?
  	setcookie("jazyk","sk");
    $db = cmsms()->GetDb(); 
    $dbresult = $db->Execute('SELECT content_alias,content_name from '.cms_db_prefix().
			     'content where parent_id=? and content_alias!=? order by item_order',array(-1,"home"));
    while ($dbresult && $row=$dbresult->FetchRow()){
      if($row['content_alias'] != "referencie"){
      ?>
      <div class="swiper-slide">
        <div class="<? echo str_replace("-","",$row['content_alias']); ?> podstranka">
        <div class="container">
        </div><!--container-->
        <div class="content">
        </div>
        </div><!--o-nas-->
      </div><!--swiper-slide-->  
      <?
      }else{
      ?>
      <div class="referencie-custom-slide swiper-slide">  
    	<div class="referencie container">
    	<div class="col-md-3 col-sm-3 col-xs-3 referencie-menu">  
    	<h2>Referencie</h2>
      
    		<div class="refs-scroll">
    		<div class="swiper-wrapper">
    		<div class="swiper-slide">
    		<div class="slide-inner">
      			<ul class="referencie-nav ">
            <?
            $klientName = "";
            $iteration = 0;
            $dbresult2 = $db->Execute('SELECT cc.content_name AS klient_name, cc.menu_text AS klient_name_en,cc.content_alias as klient_alias, ccc.content_alias as projekt_alias, ccc.content_name AS projekt_name_sk, ccc.menu_text AS projekt_name_en FROM cms_content c RIGHT JOIN cms_content cc ON cc.parent_id = c.content_id LEFT JOIN cms_content ccc ON ccc.parent_id = cc.content_id WHERE c.content_alias =  "referencie" ORDER BY cc.item_order'); 
            while ($dbresult2 && $row2=$dbresult2->FetchRow()){
              if($klientName != $row2['klient_name']){
                if($klientName != ""){
                  ?>
                  </ul>	
      				    </li> 
                  <?  
                }
                ?>
                <li class="parentMenu"><span class="<? echo str_replace("-","",$row2['klient_alias'])?>"><a class="parentSubmenu" href="javascript:void()"><? echo $row2['klient_name']; ?></a></span>
                <ul class="referencie-dropdown invisible">
                <?  
                $klientName = $row2['klient_name'];
              }
              ?>
                <li class="<? echo ((str_replace("-","",$row2['projekt_alias']) != "") ? str_replace("-","",$row2['projekt_alias']) : "empty")?>"><a class="childSubmenu" href="javascript:void()"><? echo $row2['projekt_name_sk']?></a></li>
              <?
              $iteration++;
            }
            ?>
            </ul>	
      			</li> 
      			</ul><!--referencie-nav-->
      		</div>
    		</div>
    		</div>
    		<div class="swiper-scrollbar"></div>
    		</div>
    		
    		</div>
    		<div class="col-md-9 col-sm-9 col-xs-9 refs-wrap swiper-slide">
    			<div class="bx-prev-ref"><img src="img/arrow-left.png" /></div>
    			<div class="bx-next-ref"><img src="img/arrow-right.png" /></div>
    			<div class="offset">
    				<div class="swiper-container swiper-child"> 
    					<?php  require_once('lib/generate_ref.php'); ?> 
    				</div>
    			</div>
    		</div>
    	</div><!--referencie--></div> 
      <?
      } 
    }
    ?>
	  </div><!--swiper-wrapper-->
</div><!--swiper-container swiper-parent-->