<?php /* Smarty version Smarty-3.1.14, created on 2014-02-18 21:49:52
         compiled from "/domains1/vx237300/public/www_root/admin/themes/OneEleven/templates/shortcuts.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5207364255303c77099ef25-98616931%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '071292e1a31dc0f576076910e5f180e33e588339' => 
    array (
      0 => '/domains1/vx237300/public/www_root/admin/themes/OneEleven/templates/shortcuts.tpl',
      1 => 1386798272,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5207364255303c77099ef25-98616931',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'module_help_url' => 0,
    'secureparam' => 0,
    'marks' => 0,
    'mark' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_5303c770a5c245_19594921',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_5303c770a5c245_19594921')) {function content_5303c770a5c245_19594921($_smarty_tpl) {?><?php if (!is_callable('smarty_function_root_url')) include '/domains1/vx237300/public/www_root/plugins/function.root_url.php';
?><div class="shortcuts"><ul class="cf"><!-- <li class="help"><?php if (isset($_smarty_tpl->tpl_vars['module_help_url']->value)){?><a href="<?php echo $_smarty_tpl->tpl_vars['module_help_url']->value;?>
" title="<?php echo lang('module_help');?>
"><?php echo lang('module_help');?>
</a><?php }else{ ?><a href="http://wiki.cmsmadesimple.org/index.php/Main_Page" rel="external" title="<?php echo lang('module_help');?>
"><?php echo lang('module_help');?>
</a><?php }?></li><li class="settings"><a href="myaccount.php?<?php echo $_smarty_tpl->tpl_vars['secureparam']->value;?>
" title="<?php echo lang('myaccount');?>
"><?php echo lang('myaccount');?>
</a></li><?php if (isset($_smarty_tpl->tpl_vars['marks']->value)){?><li class="favorites open"><a href="listbookmarks.php?<?php echo $_smarty_tpl->tpl_vars['secureparam']->value;?>
" title="<?php echo lang('bookmarks');?>
"><?php echo lang('bookmarks');?>
</a></li><?php }?>  --><li class="view-site"><a href="<?php echo smarty_function_root_url(array(),$_smarty_tpl);?>
" rel="external" target="_blank" title="<?php echo lang('viewsite');?>
"><?php echo lang('viewsite');?>
</a></li><li class="logout"><a href="logout.php?<?php echo $_smarty_tpl->tpl_vars['secureparam']->value;?>
" title="<?php echo lang('logout');?>
"><?php echo lang('logout');?>
</a></li></ul></div><?php if (isset($_smarty_tpl->tpl_vars['marks']->value)){?><div class="dialog invisible" role="dialog" title="<?php echo lang('bookmarks');?>
"><?php if (count($_smarty_tpl->tpl_vars['marks']->value)){?><h3><?php echo lang('user_created');?>
</h3><ul><?php  $_smarty_tpl->tpl_vars['mark'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['mark']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['marks']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['mark']->key => $_smarty_tpl->tpl_vars['mark']->value){
$_smarty_tpl->tpl_vars['mark']->_loop = true;
?><li><a<?php if ($_smarty_tpl->tpl_vars['mark']->value->bookmark_id>0){?> class="bookmark"<?php }?> href="<?php echo $_smarty_tpl->tpl_vars['mark']->value->url;?>
" title="<?php echo $_smarty_tpl->tpl_vars['mark']->value->title;?>
"><?php echo $_smarty_tpl->tpl_vars['mark']->value->title;?>
</a></li><?php } ?></ul><?php }?><h3><?php echo lang('help');?>
</h3><ul><li><a rel="external" class="external" href="http://forum.cmsmadesimple.org" title="<?php echo lang('forums');?>
"><?php echo lang('forums');?>
</a></li><li><a rel="external" class="external" href="http://wiki.cmsmadesimple.org" title="<?php echo lang('wiki');?>
"><?php echo lang('wiki');?>
</a></li><li><a rel="external" class="external" href="http://cmsmadesimple.org/main/support/IRC"><?php echo lang('irc');?>
</a></li><li><a rel="external" class="external" href="http://wiki.cmsmadesimple.org/index.php/User_Handbook/Admin_Panel/Extensions/Modules"><?php echo lang('module_help');?>
</a></li></ul></div><?php }?>
<?php }} ?>