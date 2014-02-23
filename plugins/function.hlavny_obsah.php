<?php
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

function smarty_function_hlavny_obsah()
{
  ?>
  <div class="swiper-container swiper-parent">
	   <div class="swiper-wrapper">
  <?
    $iteration = 0;
    $db = cmsms()->GetDb(); 
    $dbresult = $db->Execute('SELECT content_alias,content_name from cms_content where parent_id=? and content_alias!=? order by item_order',array(-1,"home"));
    while ($dbresult && $row=$dbresult->FetchRow()){
      
      if($row['content_alias'] != "referencie"){
      
      ?>
      <div class="swiper-slide">
        <div class="<? echo str_replace("-","",$row['content_alias']); ?> content">
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
            $dbresult = $db->Execute('SELECT cc.content_name AS klient_name, ccc.content_alias as projekt_alias, ccc.content_name AS projekt_name_sk, ccc.menu_text AS projekt_name_en FROM cms_content c RIGHT JOIN cms_content cc ON cc.parent_id = c.content_id LEFT JOIN cms_content ccc ON ccc.parent_id = cc.content_id WHERE c.content_alias =  "referencie" ORDER BY cc.item_order'); 
            while ($dbresult && $row=$dbresult->FetchRow()){
              if($klientName != $row['klient_name']){

                if($klientName != ""){
                  ?>
                  </ul>	
      				    </li> 
                  <?
                }
                ?>
                <li class="parentMenu"><span><? echo $row['klient_name']; ?></span>
                <ul class="referencie-dropdown invisible">
                <?
                $klientName = $row['klient_name'];
              }
              ?>
                <li class="<? echo str_replace("-","",$row['projekt_alias'])?>"><? echo $row['projekt_name_sk']?></li>
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
           
                  

    <?
}
?>

