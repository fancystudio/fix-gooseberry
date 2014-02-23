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

function smarty_function_hlavne_menu()
{
  ?>
   <ul class="nav nav-pills">
   <?
    $iteration = 0;
    $db = cmsms()->GetDb();
    $dbresult = $db->Execute('SELECT content_alias,content_name from '.cms_db_prefix().
			     'content where parent_id=? and content_alias!=? order by item_order',array(-1,"home"));
    while ($dbresult && $row=$dbresult->FetchRow()){ 
      if($iteration != 0){
        ?>
        <li class="divider">|</li>  
        <?
      }
      ?>
      <li class="menuItem <? echo str_replace("-","",$row['content_alias']); ?>Menu" slide="<? echo $iteration; ?>"><a href="#"><? echo $row['content_name']; ?></a></li>
      <?
      $iteration++;
    }
  ?>
	</ul>
  <?
}
?>
