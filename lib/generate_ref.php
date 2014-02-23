<style>
  .audiojs,.swipebox-video {margin: 0 auto}
  .audiojs .play-pause{width: 39px} 
  .nextClass{
    width: 76px;
    display: block;
    float: inherit;
    height: 113px;
    margin-left: -52px;
    margin-top: -38px;
  }
  .prevClass{
    width: 76px;
    display: block;
    float: inherit;
    height: 113px;
    margin-left: -3px;
    margin-top: -38px;
  } 
</style>
<?php
$dsn = "mysql:host=mysql51.websupport.sk;port=3309;unix_socket=/tmp/mysql51.sock;dbname=gooseberry15";
try{
  $db = new PDO($dsn, "gooseberry15", "gooseberry15*gy");
	$db->exec("SET CHARACTER SET utf8");
} catch (Exception $e) {
		echo "Failed: " . $e->getMessage();
    $db->rollBack();
}
if($_REQUEST['ajaxCall']){
	?>
	<div class="swiper-container swiper-child">
	<?php
}
if(isset($_REQUEST['project'])){
  $projekt = true;
  $sqlQuery = "SELECT rf.file_name, rf.desc_sk, rf.reference_alias, rf.desc_en, rf.position, rft.file_name as video_thumb FROM cms_content c RIGHT JOIN cms_content cc ON c.content_id = cc.parent_id RIGHT JOIN cms_content ccc ON cc.content_id = ccc.parent_id RIGHT JOIN cms_reference_files rf ON ccc.content_alias = rf.reference_alias LEFT JOIN cms_reference_files rft ON rf.file_name = rft.desc_sk AND rft.reference_type = '2' WHERE c.content_alias =  'referencie' AND ccc.content_alias =  '".$_REQUEST['project']."' AND rf.reference_type = '1' ORDER BY rf.position"; 
}else{
  $projekt = false;
  $sqlQuery = "SELECT rf.file_name, rf.desc_sk, rf.reference_alias, rf.desc_en FROM cms_content c LEFT JOIN cms_content cc ON c.content_id = cc.parent_id LEFT JOIN cms_reference_files rf ON cc.content_alias = rf.reference_alias WHERE ".(isset($_REQUEST['klient']) ? "cc.content_alias =  '".$_REQUEST['klient']."'" : "c.content_alias = 'referencie'")." and rf.reference_type = '0' ORDER BY rf.position";
}

$klientIteration = 1;  
$resultCount = 0;
$maxPosition = 0;
       
$res = $db->prepare($sqlQuery);
$files = array();
$res->execute();

while ($row = $res->fetch(PDO::FETCH_OBJ)){
  $resultCount++;
  $files[] = $row;
  if($row->position > $maxPosition){
    $maxPosition = $row->position;
  }  
}
$advancedFiles = array(); 
for($i=0;$i<$maxPosition;$i++){
  $isVirtual = true;
  $realPosition = 0;
  for($j=0;$j<$resultCount;$j++){
    if($files[$j]->position == ($i+1)){
      $isVirtual = false; 
      $realPosition = $j; 
    }  
  }
  if($isVirtual){
    $virtualObject = new stdClass;
    $virtualObject->file_name = "virtual.jpg";
    $advancedFiles[$i] = $virtualObject;      
  }else{
    $advancedFiles[$i] = $files[$realPosition];
  }  
}
?>

<div class="ref-wrapper swiper-wrapper <? echo (empty($files) ? "emptyFiles" : "")?>">

<?php

if($projekt){
$fileIteration = 0;

//sem dat triedenie ak bude treba - triedenie.txt

//exit;
}
$rowLimit = 0;   
$rowCount = 0; 
$rowWithVideo = false;
if(isset($_REQUEST['project'])){
for($i=0;$i<count($advancedFiles);$i++){
$format = substr($advancedFiles[$i]->file_name, -3, 3);
  if($i == 0){
     for($j=$i;$j<$i+3;$j++){
      if((substr($advancedFiles[$j]->file_name, -3, 3)) == "mp4"){
        $rowWithVideo = true;    
      } 
     }  
     ?>                                                                                  
    <div class="swiper-slide <? echo (($rowWithVideo) ? "video-wrap" : "image-wrap"); ?> first<? echo (($maxPosition < $klientIteration+3) ? " last" : "") ?>">
    <?php                              
  }
  if($advancedFiles[$i]->file_name != "virtual.jpg"){
  if($format == "mp4") {$formatClass = "video ";}
  elseif($format == "mp3") {$formatClass = "image ";}
  else {$formatClass = "image ";}
  ?>  
    
			 <a class="mediaClass <? echo $formatClass; ?>swipebox" rel="gallery-1" href="uploads/<? echo ($projekt) ? "catalogerfiles/".$advancedFiles[$i]->reference_alias."/" : "images/catalog_src/" ?><? echo $advancedFiles[$i]->file_name; ?>" name_sk="<? echo $advancedFiles[$i]->desc_sk; ?>" name_en="<? echo $advancedFiles[$i]->desc_en; ?>" title="<? echo ($_COOKIE["jazyk"] == "sk") ? $advancedFiles[$i]->desc_sk : $advancedFiles[$i]->desc_en ?>">
			<?
      if($format == "mp4"){
      	$rowLimit = $rowLimit + 2;
        $rowCount = $rowCount + 2;
        $videoThumb = (isset($advancedFiles[$i]->video_thumb) ? "crop.php?src=uploads/images/catalog_src/".$advancedFiles[$i]->video_thumb."&w=366&h=240" : "img/video-thumb.jpg");
        $audioThumb = "img/music-player.jpg";
        ?>
		            
        <img src="<? echo (($format == "mp4") ? $videoThumb : $audioThumb) ?>" videothumb="<? echo (($format == "mp4" && isset($advancedFiles[$i]->video_thumb)) ? "uploads/images/catalog_src/".$advancedFiles[$i]->video_thumb : "") ?>"  title="<?php echo $advancedFiles[$i]->file_name;?>" />
				<?
        if($format == "mp4"){
        ?>
          <span class="play-btn">
            <img class="playbutton" src="img/play-btn-sm.png">
          </span>
        <?
        }
        ?>
        </a>
        <?
      }else{
      	$rowLimit++;
        $rowCount++;
        $imgPath = (($projekt) ? "crop.php?src=uploads/catalogerfiles/".$advancedFiles[$i]->reference_alias."/" : "crop.php?src=uploads/images/catalog_src/").$advancedFiles[$i]->file_name."&w=198&h=274";
      	if($format == "mp3"){
          $imgPath = "crop.php?src=img/nota-sm-pic.jpg&w=198&h=274";
        }
        //$imgPath = $imgPath = (($projekt) ? "uploads/catalogerfiles/".$advancedFiles[$i]->reference_alias."/" : "uploads/images/catalog_src/").$advancedFiles[$i]->file_name;
        ?> 
        <img src="<?php echo $imgPath?>" width="198" height="274" title="<?php echo $advancedFiles[$i]->file_name?>"/>
        </a>
        <?
      }
    }else{
       $rowLimit++;
       $rowCount++;
       ?>
       <div class="emptyImg"></div>
       <?
    }  
      ?>    
    <?php 
    
   if($rowLimit % (($rowWithVideo) ? 6 : 3) == 0){
    $rowWithVideo = false;   
    $isLast = false;
    for($j=$i;$j<$i+3;$j++){
      if((substr($advancedFiles[$j+1]->file_name, -3, 3)) == "mp4"){
        $rowWithVideo = true; 
        $rowLimit = 0; 
      } 
     }
    if($klientIteration != count($advancedFiles)){
    ?> 
    </div>
    <div class="swiper-slide <? echo (($rowWithVideo) ? "video-wrap" : "image-wrap"); ?>">  
    <?php
    } 
  }  
  $klientIteration++;
}
}else{
  for($i=0;$i<count($files);$i++){
$format = substr($files[$i]->file_name, -3, 3);
  if($i == 0){
     for($j=$i;$j<$i+3;$j++){
      if((substr($files[$j]->file_name, -3, 3)) == "mp4" || (substr($files[$j]->file_name, -3, 3)) == "mp3"){
        $rowWithVideo = true;    
      } 
     }  
     ?>                                                                                  
    <div class="swiper-slide <? echo (($rowWithVideo) ? "video-wrap" : "image-wrap"); ?> first<? echo (($resultCount < $klientIteration+3) ? " last" : "") ?>">
    <?php                              
  }
  ?>  
			 <a class="mediaClass <? echo ($format == "mp4" || $format == "mp3") ? "video " : "image "?>swipebox" rel="gallery-1" href="uploads/<? echo ($projekt) ? "catalogerfiles/".$files[$i]->reference_alias."/" : "images/catalog_src/" ?><? echo $files[$i]->file_name; ?>" name_sk="<? echo $files[$i]->desc_sk; ?>" name_en="<? echo $files[$i]->desc_en; ?>" title="<? echo ($_COOKIE["jazyk"] == "sk") ? $files[$i]->desc_sk : $files[$i]->desc_en ?>">
			<?
      if($format == "mp4" || $format == "mp3"){
      	$rowLimit = $rowLimit + 2;
        $videoThumb = (isset($files[$i]->video_thumb) ? "crop.php?src=uploads/images/catalog_src/".$files[$i]->video_thumb."&w=366&h=240" : "img/video-thumb.jpg");
        $audioThumb = "img/video-thumb.jpg";
        ?>
		            
        <img src="<? echo (($format == "mp4") ? $videoThumb : $audioThumb) ?>" videothumb="<? echo (($format == "mp4" && isset($files[$i]->video_thumb)) ? "uploads/images/catalog_src/".$files[$i]->video_thumb : "") ?>"  title="<?php echo $files[$i]->desc_sk;?>" />
				<span class="play-btn"><img class="playbutton" src="img/play-btn-sm.png"></span>
        </a>
        <?
      }else{
      	$rowLimit++;
        
        $imgPath = (($projekt) ? "crop.php?src=uploads/catalogerfiles/".$files[$i]->reference_alias."/" : "crop.php?src=uploads/images/catalog_src/").$files[$i]->file_name."&w=198&h=274";
        //$imgPath = $imgPath = (($projekt) ? "uploads/catalogerfiles/".$files[$i]->reference_alias."/" : "uploads/images/catalog_src/").$files[$i]->file_name;
        ?> 
        <img src="<?php echo $imgPath?>" width="198" height="274" title="<?php echo $files[$i]->file_name?>"/>
        </a>
        <?
      }
      ?>
    <?php 
    
   if($rowLimit % (($rowWithVideo) ? 6 : 3) == 0){
    for($j=$i;$j<$i+3;$j++){
      if((substr($files[$j+1]->file_name, -3, 3)) == "mp4" || (substr($files[$j+1]->file_name, -3, 3)) == "mp3"){
        $rowWithVideo = true; 
      } 
     }
    if($klientIteration != count($files)){
    ?> 
    </div>
    <div class="swiper-slide <? echo (($rowWithVideo) ? "video-wrap" : "image-wrap"); ?><? echo (($resultCount <= $klientIteration+3) ? " last" : "") ?>">  
    <?php 
    }
  }  
  $klientIteration++;
}  
} 
?>
</div>	
</div><!--ref-nahlady swiper-wrapper-->     
<?php if($_REQUEST['ajaxCall']){
	?>
	</div>
	<?php
}?>
<script type="text/javascript">
  var $swipebox = $(".swipebox").swipebox({
		//useCSS : true, // false will force the use of jQuery for animations
		hideBarsDelay : 3000, // 0 to always show caption and action bar
		videoMaxWidth : 1140 // called before opening
	}); 
                     
	function preinicializuj(){
		$swipebox.refresh();
	}
</script>  
