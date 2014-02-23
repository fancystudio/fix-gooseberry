<?php
#-------------------------------------------------------------------------
# Module: Cataloger - build a catalog or portfolio of stuff
# Version: 0.12
#
# Copyright (c) 2012, Fernando Morgado (JoMorg) jomorg.morg@gmail.com
# Copyright (c) 2006, Samuel Goldstein <sjg@cmsmodules.com>
# For Information, Support, Bug Reports, etc, please visit the
# CMS Made Simple Forge at http://dev.cmsmadesimple.org
#
#-------------------------------------------------------------------------
# CMS - CMS Made Simple is (c) 2006 by Ted Kulp (wishy@cmsmadesimple.org)
# This project's homepage is: http://www.cmsmadesimple.org
#-------------------------------------------------------------------------
#
# This program is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA 02111-1307 USA
# Or read it online: http://www.gnu.org/licenses/licenses.html#GPL
#
#-------------------------------------------------------------------------
class CatalogItem extends CMSModuleContentType
#class CatalogItem extends Content
{
   var $attrs;
   var $validation=FALSE;
   
   function __construct()
   {
	    parent::__construct();
   }
   
   function ModuleName()
   {
        return 'Cataloger';
   } 
   
   function IsCopyable()
   {
      return true;
   }
   
   function SetProperties()
   {
      parent::SetProperties();
      $this->getUserAttributes();
      
      foreach ($this->attrs as $thisAttr)
      {
         $this->AddExtraProperty($thisAttr->attr);
      }
      
      $this->AddExtraProperty('sub_template');
      #Turn on preview
      $this->mPreview = true;
      #Turn off caching
      $this->mCachable = false;
   }
   
   function getUserAttributes()
      {
      #$module = $this->GetModuleInstance('Cataloger');
      $module = cms_utils::get_module('Cataloger');
      $vars = $module->getUserAttributes('catalog_attrs');
      $this->attrs = &$vars['catalog_attrs'];
      }
   
   function getItemAttr($name)
      {
      $this->getUserAttributes();
      return $this->attrs[$name];
      }
   
   function &getAttrs()
      {
      $this->getUserAttributes();
      return $this->attrs;
      }
   
   function GetCreationDate()
      {
      return $this->mCreationDate;
      }
   
   function GetModifiedDate()
      {
      return $this->mModifiedDate;
      }
   
   function TabNames()
      {
      $ret = array(lang('main'));
      
      if (get_site_preference('Cataloger_mapi_pref_item_image_count', 0)>0)
         {
         array_push($ret, $this->lang('nameimages'));
         }
      
      if (get_site_preference('Cataloger_mapi_pref_item_file_count', 0)>0)
         {
         array_push($ret, $this->lang('namefiles'));
         }
      
      array_push($ret, lang('options'));
      return $ret;
      }
   
   function EditAsArray($adding = false, $tab = 0, $showadmin=false)
      {
      $gCms = cmsms();
      $config = $gCms->GetConfig();
      $module = $this->GetModuleInstance();
      $db = $gCms->GetDb();
      $wysiwyg = (strlen(get_preference(get_userid(), 'wysiwyg')) > 0);
      $has_images = (get_site_preference('Cataloger_mapi_pref_item_image_count', 0)>0);
      $has_files = (get_site_preference('Cataloger_mapi_pref_item_file_count', 0)>0);
      
      if ($tab == 1)
         {
         if (! $has_images && ! $has_files)
            {
            $tab = 3;
            }
         elseif (!$has_images)
            {
            $tab=2;
            }
         }
      elseif ($tab == 2)
         {
         if (!$has_images || !$has_files)
            {
            $tab = 3;
            }
         }
      
      $ret = array();
      $stylesheet = '';
      
      if ($this->TemplateId() > 0)
         {
         $stylesheet = '../stylesheet.php?templateid='.$this->TemplateId();
         }
      else
         {
         $templateops = $gCms->GetTemplateOperations();
         $defaulttemplate = $templateops->LoadDefaultTemplate();
         
         if (isset($defaulttemplate))
            {
            $this->mTemplateId = $defaulttemplate->id;
            $stylesheet = '../stylesheet.php?templateid='.$this->TemplateId();
            }
         }
      
      
      if ($tab == 0)
         {
         $query = 'SELECT id, title FROM '. cms_db_prefix(). 'module_catalog_template WHERE type_id=1 ORDER by title';
         $subTemplates = array();
         $dbresult = $db->Execute($query);
         
         while ($dbresult !== false && $row = $dbresult->FetchRow())
            {
            $subTemplates[$row['title']]=$row['id'];
            }
         
         $ret[] = $this->display_single_element('title', $adding);
         $ret[] = $this->display_single_element('menutext', $adding);
         $ret[] = $this->display_single_element('parent', $adding);
         $templateops = $gCms->GetTemplateOperations();
         $ret[] = array($this->Lang('namepage').' '. lang('template'), $templateops->TemplateDropdown('template_id', $this->mTemplateId));
         $val = $this->GetPropertyValue('sub_template');
         $ret[] = array($this->Lang('Sub').' '. lang('template'), $module->CreateInputDropdown('', 'sub_template', $subTemplates, -1, $val));
         $this->getUserAttributes();
         foreach ($this->attrs as $thisAttr)
            {
			$ret[] = $module->attributeInput($this, $thisAttr, $wysiwyg, $stylesheet);
			}
         }
      
      
      if ($tab == 1)
         {
         $pf = new Cataloger();
         $imgcount = ($pf->selectReferenceCount($this->mAlias, "nahlad"));    //sem moze ist napr 50
         $thumbsize = get_site_preference('Cataloger_mapi_pref_item_image_size_thumbnail', '70');
         
         if ($imgcount != 0)
            {
            // check if is not 0
            //$imgsrc = '<script src="../lib/jquery/js/my.js"></script>';
            $imgsrc .= '<ul id="sortableImg">';
            for ($i=1; $i<= $imgcount; $i++)
               {
               $imgAtributes = $pf->selectReferenceFile($this->mAlias.'_src_'.$i.'.jpg', $this->mAlias);
               $imgsrc .= '<li class="videoThumbItem"><span class="imageAlias" name="'.$this->mAlias.'" style="display:none"></span>';
               $imgsrc .= '<img class="imageClass" alt="'.$this->lang('nameimages').'" title="'.$this->lang('nameimages').'" src="'.
$config['root_url'].'/modules/Cataloger/Cataloger.Image.php?i='.$this->mAlias.'_t_'.$i.'_'.$thumbsize.'_1.jpg&amp;ac='.rand(0,9).rand(0,9).rand(0,9).'" />';
               $imgsrc .= '</span><span style="vertical-align:top;">&nbsp;<input class="videoThumbFile" type="file" name="image'.$i.'" />';
               $imgsrc .= '<span class="removeFile">';
               $imgsrc .= '<input class="imageRemove" type="checkbox" id="rm_image_'.$this->mAlias.
	    	'_'.$i.'" name="rm_image_'.$this->mAlias.
	    	'_'.$i.'" /><label class="imageRemoveLabel" for="rm_image_'.$this->mAlias.
	    	'_'.$i.'">'.$this->lang('deleteimage').'</label>';
               $imgsrc .= '</span></span>';
               $imgsrc .= '<div class="nahladVideo"><span>Náhľad k videu: </span><input type="text" class="nahladVideoClass" name="nahlad'.$i.'" value="'.$imgAtributes['desc_sk'].'"/></span></div>';
               $imgsrc .= '</li>';
               }
            
            $imgsrc .= '</ul>';
            $imgsrc .= '<div class="addVideoThumb">Pridať náhľad</div>';
            $ret[] = array($this->lang('nameimages').':', $imgsrc);
            }
         // end  if ($imgcount != 0)
            else{
            echo '<div class="pagetext"><img alt="',$this->lang('nameimages'),'" title="',$this->lang('nameimages'),'" src="/modules/Cataloger/images/no-image.gif" /></div>';
            }
         // end else
         }
      
      if ($tab == 2)
         {
         $pf = new Cataloger();
         $filecount = get_site_preference('Cataloger_mapi_pref_item_file_count', '0');      //sem moze ist napr 50
         $filecountNotReal = $pf->selectReferenceCount($this->mAlias,"projekt")+1;
         $filecount = ($pf->selectReferenceCount($this->mAlias,"projekt",true));
         if ($filecount != 0)
            {
            list($filelist, $filetype) = $module->getFiles($this->mAlias);
            
            $filesrc = '<script src="../lib/jquery/js/my.js"></script>';
            $filesrc .= '<ul id="sortable">';
            for ($i=0; $i< $filecount; $i++){	
              $filesrc .= '<li class="fileItem">';
              $filesrc .= '<span class="fileAlias" name="'.$this->mAlias.'" style="display:none"></span>';
              $filesrc .= '<div class="ref-items">';
              $scr = '<img src="'.$gCms->config['root_url'].'/modules/FileManager/icons/themes/default/extensions/16px/'.
							($filetype[$i] == "mp4" ? "avi" : $filetype[$i]).'.png" /><span class="img-name">'.$filelist[$i].'</span>';
              if($filetype[$i] == "jpg" || $filetype[$i] == "png"){
              	$scr = '<img src="../crop.php?src=uploads/catalogerfiles/'.$this->mAlias."/".$filelist[$i].'&w=198&h=274" />';
              }

              $fileAtributes = $pf->selectReferenceFile($filelist[$i], $this->mAlias);
              $filesrc .= '<div class="fileName">'.$scr.'</div>';
               
               $filesrc .='<span style="vertical-align:middle;">';
               $filesrc .= '<span style="vertical-align:middle;">&nbsp;<input class="itemFile" type="file" name="file'.$i.'" />';
                  $filesrc .= '<span class="removeFile"><input type="checkbox" id="rm_file_'.$this->mAlias.
				    	'_'.$i.'" name="rm_file_'.$filelist[$i].'" value="'.$filelist[$i].'"/><label for="rm_file_'.$this->mAlias.
				    	'_'.$i.'">'.$this->lang('deletefile').'</label></span>';
              
               $filePartsBodka = explode('.',$filelist[$i]);
               $filePartsPodciarkovnik = explode('_',$filePartsBodka[0]);
               $filesrc .= '</span></span>';
               $filesrc .= '<div class="pozicia"><span>Pozícia: </span><input type="text" class="filePosition" name="position'.(empty($filelist) ? $filecountNotReal : $filePartsPodciarkovnik[1]).'" value="'.$fileAtributes['position'].'"/></span></div>';
               $filesrc .= '<div class="popis-sk"><span>Popis sk: </span><input type="text" class="textSk" name="text_sk'.(empty($filelist) ? $filecountNotReal : $filePartsPodciarkovnik[1]).'" value="'.$fileAtributes['desc_sk'].'"/></span></div>';
               $filesrc .= '<div class="popis-en"><span>Popis en: </span><input type="text" class="textEn" name="text_en'.(empty($filelist) ? $filecountNotReal : $filePartsPodciarkovnik[1]).'" value="'.$fileAtributes['desc_en'].'"/></span></div>';
               $filesrc .= '</div>';
               $filesrc .= '</li>';
               if(empty($filelist)){
               	$filecountNotReal++;
               }
            }
            
            $filesrc .= '</ul>';
            $filesrc .= '<div class="hideImgCount" style="display:none">'.$filecountNotReal.'</div>';
            $filesrc .= '<div class="addFile">Pridať file</div>';
            $ret[] = array($this->lang('namefiles').':', $filesrc);
            }
         else
            {
            echo '<div class="pagetext"><img alt="',$this->lang('namefiles'),'" title="',$this->lang('namefiles'),'" src="/modules/Cataloger/images/no-image.gif" /></div>';
            }
         }
      
      
      if ($tab == 3)
         {
         global $CMS_VERSION;
         $ret[] = $this->display_single_element('active', $adding);
         $ret[] = $this->display_single_element('showinmenu', $adding);
         $ret[] = $this->display_single_element('secure', $adding);
         $ret[] = $this->display_single_element('alias', $adding);
         
         if (version_compare($CMS_VERSION, '1.9-beta1') > -1)
            {
            $ret[] = $this->display_single_element('page_url', $adding);
            }
         
         $ret[] = array(lang('metadata').':', create_textarea(false, $this->Metadata(), 'metadata', 'pagesmalltextarea', 'metadata', '', '', '80', '6'));
         $ret[] = $this->display_single_element('titleattribute', $adding);
         $ret[] = $this->display_single_element('tabindex', $adding);
         $ret[] = $this->display_single_element('accesskey', $adding);
         $ret[] = $this->display_single_element('owner', $adding);
         $ret[] = $this->display_single_element('additionaleditors', $adding);
         }
      
      return $ret;
      }
   
   function ValidateData()
      {
      $v = parent::ValidateData();
      
      if ($v !== FALSE)
         {
         return $v;
         }
      
      return $this->validation;
      }
   
   function validationError($msg)
      {
      if (!is_array($this->validation))
         {
         $this->validation = array();
         }
      
      array_push($this->validation, $msg);
      }
   
   function FillParams($params,$editing = false)
      {
      if(!isset($_SESSION["countLoop"])){
      	$_SESSION["countLoop"] = 1;
      }
      if($_SESSION["countLoop"] == 1){
      $gCms = cmsms();
      $config = $gCms->GetConfig();
      $db = $gCms->GetDb();
      $this->validation = FALSE;
      
      if (isset($params))
         {
         $parameters = array('sub_template');
         
         foreach ($parameters as $oneparam)
            {
            
            if (isset($params[$oneparam]))
               {
               $this->SetPropertyValue($oneparam, $params[$oneparam]);
               }
            }
         
         $this->getUserAttributes();
         
         foreach ($this->attrs as $thisAttr)
            {
            
            if (isset($params[$thisAttr->safe]))
               {
               $this->SetPropertyValue($thisAttr->attr, $params[$thisAttr->safe]);
               }
            }
         
         if (isset($params['title']))
            {
            $this->mName = $params['title'];
            }
         
         if (isset($params['menutext']))
            {
            $this->mMenuText = $params['menutext'];
            }
         
         if (isset($params['template_id']))
            {
            $this->mTemplateId = $params['template_id'];
            }
         
         if (isset($params['alias']))
            {
            $this->SetAlias($params['alias']);
            }
         else
            {
            $this->SetAlias('');
            }
         
         if (isset($params['parent_id']))
            {
            
            if ($this->mParentId != $params['parent_id'])
               {
               $this->mHierarchy = '';
               $this->mItemOrder = -1;
               }
            
            $this->mParentId = $params['parent_id'];
            }
         
         if (isset($params['active']))
            {
            $this->mActive = true;
            }
         else
            {
            $this->mActive = false;
            }
         
         if (isset($params['showinmenu']))
            {
            $this->mShowInMenu = true;
            }
         else
            {
            $this->mShowInMenu = false;
            }
         
         if (isset($params['metadata']))
            {
            $this->mMetadata = $params['metadata'];
            }
         
         if (isset($params['accesskey']))
            {
            $this->mAccessKey = $params['accesskey'];
            }
         
         if (isset($params['titleattribute']))
            {
            $this->mTitleAttribute = $params['titleattribute'];
            }
         
         if (isset($params['tabindex']))
            {
            $this->mTabIndex = $params['tabindex'];
            }

         $this->mCachable = false;

         // Copy the image files...
         $imgcount = get_site_preference('Cataloger_mapi_pref_item_image_count', '2');
         $herosize = get_site_preference('Cataloger_mapi_pref_item_image_size_hero', '400');
         $thumbsize = get_site_preference('Cataloger_mapi_pref_item_image_size_thumbnail', '70');
         $catalogsize = get_site_preference('Cataloger_mapi_pref_item_image_size_catalog', '100');
         $categorysize = get_site_preference('Cataloger_mapi_pref_item_image_size_category', '70');
         $pf = new Cataloger(); 
        // print_r($params);
        // exit;
         foreach ($params as $thisParam=>$thisParamVal)
            {
              if((substr($thisParam, 0, -1) == "nahlad") || (substr($thisParam, 0, -2) == "nahlad")){
                 $imgcount++;
              }
            }
         for ($i=1; $i< $imgcount; $i++)
            {
            
            if (isset($_FILES['image'.$i]['size']) && $_FILES['image'.$i]['size']>0)
               {
               if ((! preg_match('/\.jpg$|\.jpeg$/i', $_FILES['image'.$i]['name'])) && (! preg_match('/\.png$/i', $_FILES['image'.$i]['name'])))
                  {
                  $this->validationError($pf->Lang('badimageformat', $_FILES['image'.$i]['name']));
                  }
               else
                  {
                  $cres = copy($_FILES['image'.$i]['tmp_name'], dirname($config['uploads_path']. $pf->getAssetPath('s').'/index.html') . '/'.$this->mAlias.'_src_'.$i.'.jpg');
                  
                  if (!$cres)
                     {
                      
                     $this->validationError($pf->Lang('badimage', $_FILES['image'.$i]['name'])); 
                     }
                  }
               }
            }
         
         
         foreach ($params as $thisParam=>$thisParamVal)
            {
            if (substr($thisParam, 0, 9) == 'rm_image_')
               {
               $imageSpecParts = explode('_', $thisParam);
               $pf->purgeAllImage($imageSpecParts[2], $imageSpecParts[3]);
               }
            }
          $pf->storeReferenceFiles($params, "nahlad", $this->mAlias);
         // and uploaded files
         //$filecount = get_site_preference('Cataloger_mapi_pref_item_file_count', 0);
         $typelist = get_site_preference('Cataloger_mapi_pref_item_file_types', 'pdf,swf,flv,doc,odt,ods,xls');
         $types = explode(',', $typelist);
         $module = $this->GetModuleInstance();
		 $filecountNotReal = $pf->selectReferenceCount($this->mAlias,"projekt")+1;
			
         $filecount = 0;
         //print_r($params);
          foreach ($params as $thisParam=>$thisParamVal)
            {
              if((substr($thisParam, 0, -1) == "position") || (substr($thisParam, 0, -2) == "position")){
                 $filecount++;
              }
            }
           
         if ($filecount > 0)
            {
            $dirspec = $config['uploads_path'].$pf->getAssetPath('f').'/'.$this->mAlias;
              
            if (!is_dir($dirspec))
               {
               mkdir($dirspec);
               }
            for ($i=0; $i< $filecount; $i++)
               {
               if (isset($_FILES['file'.$i]['size']) && $_FILES['file'.$i]['size']>0)
                  {
	                  $tspec = preg_replace('/[^\w\d\.\-_]+/', '_', $_FILES['file'.$i]['name']);
	                  $filePartsBodka = explode('.',$tspec);
	                  $tspec = "file_".$filecountNotReal.".".$filePartsBodka[1];
	                  $filecountNotReal++;
	                  $extension = substr($tspec, strrpos($tspec, '.')+1);
	                  
	                  if (!empty($extension) && in_array($extension, $types))
	                     {
	                     $pf->Audit(0, $pf->Lang('friendlyname'), $pf->Lang('uploaded', array($tspec, $this->mAlias)));
	                     
	                     list($filelist, $filetype) = $module->getFiles($this->mAlias); 
	                     $filePartsOldBodka = explode('.',$tspec); 
	                     foreach($filelist as $value){
	                      $filePartsBodka = explode('.',$value);
	                      if($filePartsBodka[0] == $filePartsOldBodka[0]){
	                        //unlink($dirspec.'/'.$value);
	                      }
                    	}
	                     $cres = copy($_FILES['file'.$i]['tmp_name'], $dirspec.'/'.$tspec);
	                     if (!$cres)
	                        {
	                         $this->validationError($pf->Lang('badimage', $_FILES['image'.$i]['name']));
	                        }else{
	                          $_SESSION["fileName"][] = $_FILES['file'.$i]['name'];
	                        }
	                     }
	                     
	                  else
	                     {
	                     $pf->Audit(0, $pf->Lang('friendlyname'), $pf->Lang('badfile', $tspec));
	                     $this->validationError($pf->Lang('badfile', $tspec));
	                     }
                  }
               }
            }  
         foreach ($params as $thisParam=>$thisParamVal)
            {
            
            if (substr($thisParam, 0, 8) == 'rm_file_')
               {
               $pSpec = preg_replace('/\.\.|\//', '', $thisParamVal);
               $spec = $config['uploads_path'].$pf->getAssetPath('f').'/'.$this->mAlias.'/'.$pSpec;
               unlink($spec);
               }
            } 
            $pf->storeReferenceFiles($params, "projekt", $this->mAlias);
         }
      
      //parent::FillParams($params);
      }
      $_SESSION["countLoop"]++;
      if($_SESSION["countLoop"] == 3){
      	unset($_SESSION["countLoop"]);
      }
      }
   
   function PopulateParams(&$params)
      {
      $gCms=cmsms();
      $config = $gCms->GetConfig();
      $db = $gCms->GetDb();
      $parameters = array('sub_template');
      
      foreach ($parameters as $oneparam)
         {
         $tmp = $this->GetPropertyValue($oneparam);
         
         if (isset($tmp) && ! empty($tmp))
            {
            $params[$oneparam] = $tmp;
            }
         }
      
      $this->getUserAttributes();
      $safeattrlist = array();
      
      foreach ($this->attrs as $thisAttr)
         {
         $tmp = $this->GetPropertyValue($thisAttr->attr);
         
         if (isset($tmp) && $tmp!='')
            {
            $params[$thisAttr->safe] = $tmp;
            
            if (isset($thisAttr->alias) && $thisAttr->alias!='')
               {
               $params[$thisAttr->alias] = $tmp;
               }
            
            $thisSafeAttr = array();
            $thisSafeAttr['name']=ucfirst($thisAttr->attr);
            $thisSafeAttr['key']='{$'.$thisAttr->safe.'}';
            
            if ($thisAttr->alias != '')
               {
               $thisSafeAttr['aliaskey'] = '{$'.$thisAttr->alias.'}';
               }
            
            array_push($safeattrlist, $thisSafeAttr);
            }
         else
            {
            $params[$thisAttr->safe] = '';
            $params[$thisAttr->alias] = '';
            }
         }
      
      $params['title'] = $this->mName;
      $params['menutext'] = $this->mMenuText;
      $params['template_id'] = $this->mTemplateId;
      $params['alias'] = $this->mAlias;
      $params['parent_id'] = $this->mParentId;
      $params['active'] = $this->mActive;
      $params['showinmenu']=$this->mShowInMenu;
      $params['attrlist'] = $safeattrlist;
      }
   
   function Show($param='')
      {
        if ($param == 'content_en')
        {
            $params = array();
            $this->PopulateParams($params);
            $pf = new Cataloger();
            @ob_start();
            $pf->DoAction('default', 'catalogmodule', $params);
            $text = @ob_get_contents();
            @ob_end_clean();
            return '{literal}' . $text . '{/literal}';
        }
      }
   
   function FriendlyName()
      {
            return $this->Lang('item_page');
      }


   protected function Update()
   {
     parent::Update();
     if( ($this->mOldAlias != $this->Alias()) && $this->mOldAlias && $this->Alias() )
       {
	 cms_utils::get_module('Cataloger')->renameImages($this->mOldAlias,$this->Alias());
       }
   }

   protected function Insert()
   {
     parent::Insert();
     if( ($this->mOldAlias != $this->Alias()) && $this->mOldAlias && $this->Alias() )
       {
	        cms_utils::get_module('Cataloger')->renameImages($this->mOldAlias,$this->Alias());
       }
   }
   
   
   //   New Methods to cope with API functions (JoMorg)
   
   /*Adds a new property*/
   function AddProperty($propName)
   {
       $this->AddExtraProperty($propName);    
   }
   
   function UpdatePropertyName($propName, $propNewName)
   {
       $tempValue = '';
       if ($this->is_known_property($propName))
       {
            $tempValue = $this->GetPropertyValue($propName);
            $this->RemoveProperty($propName,false);   
       }
       $this->AddExtraProperty($propName);
       $this->SetPropertyValue($propNewName, $tempValue);  
   }   
   
   function DeleteProperty($propName)
   {
        $this->RemoveProperty($propName,false);       
   }

}
# vim:ts=4 sw=4 noet
?>
