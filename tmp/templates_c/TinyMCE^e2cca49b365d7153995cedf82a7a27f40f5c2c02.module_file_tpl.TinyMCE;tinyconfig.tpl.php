<?php /* Smarty version Smarty-3.1.14, created on 2014-02-01 18:40:01
         compiled from "module_file_tpl:TinyMCE;tinyconfig.tpl" */ ?>
<?php /*%%SmartyHeaderCode:212364365552ed317158a9c6-20164869%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e2cca49b365d7153995cedf82a7a27f40f5c2c02' => 
    array (
      0 => 'module_file_tpl:TinyMCE;tinyconfig.tpl',
      1 => 1386798508,
      2 => 'module_file_tpl',
    ),
  ),
  'nocache_hash' => '212364365552ed317158a9c6-20164869',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'avoidlinkconversion' => 0,
    'startupmode' => 0,
    'textareas' => 0,
    'css' => 0,
    'encoding' => 0,
    'skin' => 0,
    'skinvariation' => 0,
    'htmlscheme' => 0,
    'plugins' => 0,
    'module_plugins' => 0,
    'allowresizing' => 0,
    'toolbar1' => 0,
    'toolbar2' => 0,
    'toolbar3' => 0,
    'toolbar4' => 0,
    'blockformats' => 0,
    'rooturl' => 0,
    'relativeurls' => 0,
    'language' => 0,
    'sourceformatting' => 0,
    'showpath' => 0,
    'editorwidth' => 0,
    'editorheight' => 0,
    'forcedrootblock' => 0,
    'force_p_newlines' => 0,
    'dateformat' => 0,
    'timeformat' => 0,
    'css_styles' => 0,
    'extraconfig' => 0,
    'isfrontend' => 0,
    'filepickerurl' => 0,
    'urlext' => 0,
    'filepickertitle' => 0,
    'fpwidth' => 0,
    'fpheight' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52ed31716f9dc7_31136419',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ed31716f9dc7_31136419')) {function content_52ed31716f9dc7_31136419($_smarty_tpl) {?><?php if ($_smarty_tpl->tpl_vars['avoidlinkconversion']->value=='1'){?>

function CMSMSURLConverter(url, node, on_save) {
	// Return "new" URL
  //if (url.match(/\.jpg/i)!=null || url.match(/\.png/i)!=null || url.match(/\.gif/i)!=null || url.match(/\.jpeg/i)!=null) {
  //  return tinyMCE.activeEditor.convertURL(url, node, on_save); //doesn't work... bug in Tiny I think...
  //}

//   alert(url);
url=url.replace('%7B','{');
url=url.replace('%7D','}');
url=url.replace('%20'," ");
url=url.replace('%27',"'");
url=url.replace('%20'," ");
url=url.replace('%27',"'");

//alert(url);
	return url;
}

<?php }?>


 tinyMCE.init({ 
  
  mode : "<?php echo $_smarty_tpl->tpl_vars['startupmode']->value;?>
",
  elements : "<?php echo $_smarty_tpl->tpl_vars['textareas']->value;?>
",
  body_class : "CMSMSBody",
  content_css : "<?php echo $_smarty_tpl->tpl_vars['css']->value;?>
",
<?php if ($_smarty_tpl->tpl_vars['avoidlinkconversion']->value=='1'){?>
  urlconverter_callback : "CMSMSURLConverter",
<?php }?>

  
  entity_encoding : "<?php echo $_smarty_tpl->tpl_vars['encoding']->value;?>
", 
  button_tile_map : true, //performance update

		
  theme : "advanced",
  skin : "<?php echo $_smarty_tpl->tpl_vars['skin']->value;?>
",
  skin_variant : "<?php echo $_smarty_tpl->tpl_vars['skinvariation']->value;?>
",
  theme_advanced_toolbar_location : "top",
  theme_advanced_toolbar_align : "left",
  visual : true,
	      
  accessibility_warnings : false,
      			
  fix_list_elements : true,
  verify_html : true,
  verify_css_classes : false,
  scheme : "<?php echo $_smarty_tpl->tpl_vars['htmlscheme']->value;?>
",
  
  plugins : "-cmslinker,-customdropdown,<?php echo $_smarty_tpl->tpl_vars['plugins']->value;?>
<?php echo $_smarty_tpl->tpl_vars['module_plugins']->value;?>
",
  
  paste_auto_cleanup_on_paste : true,
  paste_remove_spans : true,
  paste_remove_styles : true,

  <?php if ($_smarty_tpl->tpl_vars['allowresizing']->value!="none"){?>
  theme_advanced_resizing : true,
    <?php if ($_smarty_tpl->tpl_vars['allowresizing']->value=="height"){?>
  theme_advanced_resize_horizontal : false,
    <?php }?>
  <?php }?>


  theme_advanced_buttons1 : "<?php if (isset($_smarty_tpl->tpl_vars['toolbar1']->value)){?><?php echo $_smarty_tpl->tpl_vars['toolbar1']->value;?>
<?php }?>",
  theme_advanced_buttons2 : "<?php if (isset($_smarty_tpl->tpl_vars['toolbar2']->value)){?><?php echo $_smarty_tpl->tpl_vars['toolbar2']->value;?>
<?php }?>",
  theme_advanced_buttons3 : "<?php if (isset($_smarty_tpl->tpl_vars['toolbar3']->value)){?><?php echo $_smarty_tpl->tpl_vars['toolbar3']->value;?>
<?php }?>",
  theme_advanced_buttons4 : "<?php if (isset($_smarty_tpl->tpl_vars['toolbar4']->value)){?><?php echo $_smarty_tpl->tpl_vars['toolbar4']->value;?>
<?php }?>",


  theme_advanced_blockformats : "<?php echo $_smarty_tpl->tpl_vars['blockformats']->value;?>
",
  document_base_url : "<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/",


<?php if ($_smarty_tpl->tpl_vars['relativeurls']->value=="true"){?>
  relative_urls : true,
  remove_script_host : true,
<?php }else{ ?>
  relative_urls : false,
  remove_script_host : false,
<?php }?>
  	
  language: "<?php echo $_smarty_tpl->tpl_vars['language']->value;?>
",
  dialog_type: "modal",
  apply_source_formatting : <?php echo $_smarty_tpl->tpl_vars['sourceformatting']->value;?>
,

<?php if ($_smarty_tpl->tpl_vars['showpath']->value!=''){?>
  theme_advanced_statusbar_location : 'bottom',
  theme_advanced_path : true,
<?php }?>
			
<?php if ($_smarty_tpl->tpl_vars['editorwidth']->value!=''){?>
  width : <?php echo $_smarty_tpl->tpl_vars['editorwidth']->value;?>
,
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['editorheight']->value!=''){?>
  height : <?php echo $_smarty_tpl->tpl_vars['editorheight']->value;?>
,
<?php }?>
		
  forced_root_block : <?php echo $_smarty_tpl->tpl_vars['forcedrootblock']->value;?>
,
  force_p_newlines : <?php echo $_smarty_tpl->tpl_vars['force_p_newlines']->value;?>
,
		
  plugin_insertdate_dateFormat : "<?php echo $_smarty_tpl->tpl_vars['dateformat']->value;?>
",
  plugin_insertdate_timeFormat : "<?php echo $_smarty_tpl->tpl_vars['timeformat']->value;?>
"



<?php if ($_smarty_tpl->tpl_vars['css_styles']->value!=''){?>
  ,theme_advanced_styles : '<?php echo $_smarty_tpl->tpl_vars['css_styles']->value;?>
'
<?php }?>
<?php if ($_smarty_tpl->tpl_vars['extraconfig']->value!=''){?>
  <?php echo $_smarty_tpl->tpl_vars['extraconfig']->value;?>

<?php }?>

  <?php if ($_smarty_tpl->tpl_vars['isfrontend']->value=='false'){?>
  ,file_browser_callback : 'CMSMSFilePicker'
  <?php }?>
  
});
  
	
  
function toggleEditor(id) {
  if (!tinyMCE.getInstanceById(id))
    tinyMCE.execCommand('mceAddControl', false, id);
  else
    tinyMCE.execCommand('mceRemoveControl', false, id);
}
  

  <?php if ($_smarty_tpl->tpl_vars['isfrontend']->value=='false'){?>
  
function CMSMSFilePicker (field_name, url, type, win) {
     
  var cmsURL = "<?php echo $_smarty_tpl->tpl_vars['filepickerurl']->value;?>
&type="+type+"&showtemplate=false";
  //"<?php echo $_smarty_tpl->tpl_vars['rooturl']->value;?>
/modules/TinyMCE/filepicker.php<?php echo $_smarty_tpl->tpl_vars['urlext']->value;?>
&type="+type;
  
  tinyMCE.activeEditor.windowManager.open({
  
    file : cmsURL,
    title : '<?php echo $_smarty_tpl->tpl_vars['filepickertitle']->value;?>
',
    width : '<?php echo $_smarty_tpl->tpl_vars['fpwidth']->value;?>
',
    height : '<?php echo $_smarty_tpl->tpl_vars['fpheight']->value;?>
',
    resizable : "yes",
    scrollbars : "yes",
    inline : "yes",  
    close_previous : "no"
  
  }, {
    window : win,
    input : field_name
  });
  return false;
}

<?php }?>
<?php }} ?>