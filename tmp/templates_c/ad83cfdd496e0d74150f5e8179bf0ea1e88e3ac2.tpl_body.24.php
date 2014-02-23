<?php /* Smarty version Smarty-3.1.14, created on 2014-01-29 15:17:36
         compiled from "tpl_body:24" */ ?>
<?php /*%%SmartyHeaderCode:143123700152e90d8086f044-69324734%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ad83cfdd496e0d74150f5e8179bf0ea1e88e3ac2' => 
    array (
      0 => 'tpl_body:24',
      1 => 1385934334,
      2 => 'tpl_body',
    ),
  ),
  'nocache_hash' => '143123700152e90d8086f044-69324734',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52e90d80891d57_51597251',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52e90d80891d57_51597251')) {function content_52e90d80891d57_51597251($_smarty_tpl) {?><?php if (!is_callable('smarty_function_js_inicializacia')) include '/domains1/vx237300/public/www_root/plugins/function.js_inicializacia.php';
if (!is_callable('smarty_function_hlavne_menu')) include '/domains1/vx237300/public/www_root/plugins/function.hlavne_menu.php';
?>
<body>
<!--[if lt IE 7]>
<p class="chromeframe">Používate <strong>zastaralý</strong> prehliadač. Prosím <a href="http://browsehappy.com/">aktualizujte Váš prehliadač</a> alebo <a href="http://www.google.com/chromeframe/?redirect=true">aktivujte Google frame</a> pre bezproblémové prehliadanie na súčasnom prehliadači</p>
<![endif]-->

<div class="logo-wrapper"><img src="/img/logo.png"></img></div><!--logo-->
<div class="body-wrapper">
<div class="main-content-wrapper">
	<div class="content-top-bar">
		<img src="/img/gooseberry-logo-sm.png">
	</div><!--content-top-bar-->
		<div class="bx-prev"><span class="prev-arrow"></span></div>
		<div class="bx-next"><span class="next-arrow"></span></div><?php CMS_Content_Block::smarty_internal_fetch_contentblock(array(),$_smarty_tpl); ?><?php echo smarty_function_js_inicializacia(array(),$_smarty_tpl);?>
 </div>

<!--main-content-wrapper-->
<div class="bottom-menu-wrapper">
<div class="bottom-menu">
<?php echo smarty_function_hlavne_menu(array(),$_smarty_tpl);?>

	<ul class="nav nav-pills lang-switch">
		<li class="langClass skLang active"><a href="#">SK</a></li>
		<li class="divider">|</li>
		<li class="langClass enLang "><a href="#">EN</a></li>
	</ul>
</div><!--end-bottom-menu-->



</div><!--bottom-menu-wrapper-->
</div><!-- body wrapper-->

<?php CMS_Content_Block::smarty_internal_fetch_contentblock(array('block'=>'obsah_en','label'=>"Obsah EN"),$_smarty_tpl); ?>

</body>
</html><?php }} ?>