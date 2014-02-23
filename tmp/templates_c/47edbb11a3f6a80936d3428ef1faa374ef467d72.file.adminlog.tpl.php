<?php /* Smarty version Smarty-3.1.14, created on 2014-02-01 18:39:32
         compiled from "/domains1/vx237300/public/www_root/admin/templates/adminlog.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1616264652ed3154a72780-07969480%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '47edbb11a3f6a80936d3428ef1faa374ef467d72' => 
    array (
      0 => '/domains1/vx237300/public/www_root/admin/templates/adminlog.tpl',
      1 => 1386798229,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1616264652ed3154a72780-07969480',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'header' => 0,
    'filteruser' => 0,
    'filteraction' => 0,
    'filterdisplay' => 0,
    'langfilters' => 0,
    'SECURE_PARAM_NAME' => 0,
    'CMS_USER_KEY' => 0,
    'langfilteruser' => 0,
    'filteruservalue' => 0,
    'langfilteraction' => 0,
    'filteractionvalue' => 0,
    'langfilterapply' => 0,
    'langfilterreset' => 0,
    'logempty' => 0,
    'langshowfilters' => 0,
    'downloadlink' => 0,
    'urlext' => 0,
    'langdownload' => 0,
    'clearicon' => 0,
    'langclear' => 0,
    'pagestring' => 0,
    'languser' => 0,
    'langitemid' => 0,
    'langitemname' => 0,
    'langaction' => 0,
    'langdate' => 0,
    'loglines' => 0,
    'currow' => 0,
    'line' => 0,
    'langlogempty' => 0,
    'backurl' => 0,
    'langback' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.14',
  'unifunc' => 'content_52ed3154ca7287_37463298',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52ed3154ca7287_37463298')) {function content_52ed3154ca7287_37463298($_smarty_tpl) {?><?php if (!is_callable('smarty_function_cycle')) include '/domains1/vx237300/public/www_root/lib/smarty/plugins/function.cycle.php';
?><div class="pagecontainer">
  <div class="pageoverflow">
  <?php echo $_smarty_tpl->tpl_vars['header']->value;?>

    <?php if ($_smarty_tpl->tpl_vars['filteruser']->value!=''||$_smarty_tpl->tpl_vars['filteraction']->value!=''){?>
    <div>
      <p class="pagetext"><?php echo lang('filterapplied');?>
:</p>
      <?php if ($_smarty_tpl->tpl_vars['filteruser']->value!=''){?><p class="pageinput"><?php echo lang('user');?>
 = <?php echo $_smarty_tpl->tpl_vars['filteruser']->value;?>
</p><?php }?>
      <?php if ($_smarty_tpl->tpl_vars['filteraction']->value!=''){?><p class="pageinput"><?php echo lang('actioncontains');?>
: <?php echo $_smarty_tpl->tpl_vars['filteraction']->value;?>
</p><?php }?>
    </div>
    <?php }?>
    <p class="pageinput">
    </p>

    <div id="adminlog_filters" style="display: <?php echo $_smarty_tpl->tpl_vars['filterdisplay']->value;?>
">
      <fieldset>
        <legend><?php echo $_smarty_tpl->tpl_vars['langfilters']->value;?>
</legend>
        <form id="adminlog_filter" method="post" action="adminlog.php?<?php echo $_smarty_tpl->tpl_vars['SECURE_PARAM_NAME']->value;?>
=<?php echo $_smarty_tpl->tpl_vars['CMS_USER_KEY']->value;?>
">
          <div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['langfilteruser']->value;?>
</p>
  <p class="pageinput"><input type="text" name="filteruser" value="<?php echo $_smarty_tpl->tpl_vars['filteruservalue']->value;?>
"/></p>
</div>

          <div class="pageoverflow">
  <p class="pagetext"><?php echo $_smarty_tpl->tpl_vars['langfilteraction']->value;?>
</p>
  <p class="pageinput"><input type="text" name="filteraction" value="<?php echo $_smarty_tpl->tpl_vars['filteractionvalue']->value;?>
"/></p>
</div>
          <div class="pageoverflow">
  <p class="pagetext"></p>
  <p class="pageinput"><input type="submit" name="filterapply" value="<?php echo $_smarty_tpl->tpl_vars['langfilterapply']->value;?>
"/><input type="submit" name="filterreset"
                                                                                     value="<?php echo $_smarty_tpl->tpl_vars['langfilterreset']->value;?>
"/></p>
</div>

        </form>
      </fieldset>
    </div>

  <?php if ($_smarty_tpl->tpl_vars['logempty']->value==false){?>

    <div class="pageoptions">
    <div style="float: left; width: 49%;">
    <input type="checkbox" id="toggle_filters" <?php if ($_smarty_tpl->tpl_vars['filterdisplay']->value=="block"){?>checked="1"  <?php }?>
           onclick="if (this.checked) document.getElementById('adminlog_filters').style.display = 'block'; else document.getElementById('adminlog_filters').style.display = 'none';"/>
    <label for="toggle_filters"><?php echo $_smarty_tpl->tpl_vars['langshowfilters']->value;?>
</label>&nbsp;
    <?php if (isset($_smarty_tpl->tpl_vars['downloadlink']->value)){?>
      <a href="adminlog.php<?php echo $_smarty_tpl->tpl_vars['urlext']->value;?>
&amp;download=1"><?php echo $_smarty_tpl->tpl_vars['downloadlink']->value;?>
</a>
      <a href="adminlog.php<?php echo $_smarty_tpl->tpl_vars['urlext']->value;?>
&amp;download=1"><?php echo $_smarty_tpl->tpl_vars['langdownload']->value;?>
</a>
    <?php }?>
    <?php if ($_smarty_tpl->tpl_vars['clearicon']->value!=''){?>
      &nbsp;
      <a href="adminlog.php<?php echo $_smarty_tpl->tpl_vars['urlext']->value;?>
&amp;clear=true"><?php echo $_smarty_tpl->tpl_vars['clearicon']->value;?>
</a>
      <a href="adminlog.php<?php echo $_smarty_tpl->tpl_vars['urlext']->value;?>
&amp;clear=true"><?php echo $_smarty_tpl->tpl_vars['langclear']->value;?>
</a>
    <?php }?>
    </div>
    <div style="text-align: right;"><?php echo $_smarty_tpl->tpl_vars['pagestring']->value;?>
</div>
    </div>

    <table class="pagetable">
      <thead>
      <tr>
        <th><?php echo lang('ip_addr');?>
</th>
        <th><?php echo $_smarty_tpl->tpl_vars['languser']->value;?>
</th>
        <th><?php echo $_smarty_tpl->tpl_vars['langitemid']->value;?>
</th>
        <th><?php echo $_smarty_tpl->tpl_vars['langitemname']->value;?>
</th>
        <th><?php echo $_smarty_tpl->tpl_vars['langaction']->value;?>
</th>
        <th><?php echo $_smarty_tpl->tpl_vars['langdate']->value;?>
</th>
      </tr>
      </thead>
      <tbody>
        <?php  $_smarty_tpl->tpl_vars['line'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['line']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['loglines']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['line']->key => $_smarty_tpl->tpl_vars['line']->value){
$_smarty_tpl->tpl_vars['line']->_loop = true;
?>
          <?php echo smarty_function_cycle(array('values'=>'row1,row2','assign'=>'currow'),$_smarty_tpl);?>

        <tr class="<?php echo $_smarty_tpl->tpl_vars['currow']->value;?>
">
          <td><?php echo (($tmp = @$_smarty_tpl->tpl_vars['line']->value['ip_addr'])===null||$tmp==='' ? '' : $tmp);?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['line']->value['username'];?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['line']->value['itemid'];?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['line']->value['itemname'];?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['line']->value['action'];?>
</td>
          <td><?php echo $_smarty_tpl->tpl_vars['line']->value['date'];?>
</td>
        </tr>
        <?php } ?>

      </tbody>
    </table>

    <?php }else{ ?>
    <p><?php echo $_smarty_tpl->tpl_vars['langlogempty']->value;?>
</p>
  <?php }?>

  </div>


  <table>
  <tr>
    <td>
      <div class="pageoptions">
        <p class="pageoptions">
	<?php if (isset($_smarty_tpl->tpl_vars['downloadlink']->value)){?>
          <a href="adminlog.php<?php echo $_smarty_tpl->tpl_vars['urlext']->value;?>
&amp;download=1"><?php echo $_smarty_tpl->tpl_vars['downloadlink']->value;?>
</a>
          <a href="adminlog.php<?php echo $_smarty_tpl->tpl_vars['urlext']->value;?>
&amp;download=1"><?php echo $_smarty_tpl->tpl_vars['langdownload']->value;?>
</a>
        <?php }?>
        </p>
      </div>
    </td>
  <?php if ($_smarty_tpl->tpl_vars['clearicon']->value!=''){?>
    <td>
      <div class="pageoptions">
        <p class="pageoptions">
          <a href="adminlog.php<?php echo $_smarty_tpl->tpl_vars['urlext']->value;?>
&amp;clear=true"><?php echo $_smarty_tpl->tpl_vars['clearicon']->value;?>
</a>
          <a class="pageoptions" href="adminlog.php<?php echo $_smarty_tpl->tpl_vars['urlext']->value;?>
&amp;clear=true"><?php echo $_smarty_tpl->tpl_vars['langclear']->value;?>
</a>
        </p>
      </div>
    </td></tr>
  <?php }?>
  </table>


</div>

<p class="pageback"><a class="pageback" href="<?php echo $_smarty_tpl->tpl_vars['backurl']->value;?>
">&#171;<?php echo $_smarty_tpl->tpl_vars['langback']->value;?>
</a></p><?php }} ?>