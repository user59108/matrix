<?php /* Smarty version Smarty-3.1.7, created on 2017-03-01 12:13:56
         compiled from "/var/www/crm/includes/runtime/../../layouts/vlayout/modules/Potentials/dashboards/TopPotentialsContents.tpl" */ ?>
<?php /*%%SmartyHeaderCode:65566210958b682c459d269-78846038%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '636dbb892d3eea1bbab2b05f7d65698b208377bc' => 
    array (
      0 => '/var/www/crm/includes/runtime/../../layouts/vlayout/modules/Potentials/dashboards/TopPotentialsContents.tpl',
      1 => 1470820830,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '65566210958b682c459d269-78846038',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'MODELS' => 0,
    'MODULE_HEADER' => 0,
    'HEADER' => 0,
    'MODULE_NAME' => 0,
    'KEY_VALUE' => 0,
    'MODEL' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58b682c46420f',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58b682c46420f')) {function content_58b682c46420f($_smarty_tpl) {?>
<div style='padding:5px'>
<?php if (count($_smarty_tpl->tpl_vars['MODELS']->value)>0){?>
<div class='row-fluid'>
		<div class='span12'>
			<div class='row-fluid'>
				 <?php  $_smarty_tpl->tpl_vars['HEADER'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['HEADER']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['MODULE_HEADER']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['HEADER']->key => $_smarty_tpl->tpl_vars['HEADER']->value){
$_smarty_tpl->tpl_vars['HEADER']->_loop = true;
?>
                <div class='span4'>
					<b><?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['HEADER']->value;?>
<?php $_tmp1=ob_get_clean();?><?php echo vtranslate($_tmp1,$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
</b>
				</div>
                 <?php } ?>
			</div>
		</div>
		<hr>
       <?php  $_smarty_tpl->tpl_vars['MODEL'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['MODEL']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['MODELS']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['MODEL']->key => $_smarty_tpl->tpl_vars['MODEL']->value){
$_smarty_tpl->tpl_vars['MODEL']->_loop = true;
?>
		    <div class='row-fluid'>
               <?php  $_smarty_tpl->tpl_vars['HEADER'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['HEADER']->_loop = false;
 $_smarty_tpl->tpl_vars['KEY_VALUE'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['MODULE_HEADER']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['HEADER']->key => $_smarty_tpl->tpl_vars['HEADER']->value){
$_smarty_tpl->tpl_vars['HEADER']->_loop = true;
 $_smarty_tpl->tpl_vars['KEY_VALUE']->value = $_smarty_tpl->tpl_vars['HEADER']->key;
?>
                <div class='span4'>
			   <?php if ($_smarty_tpl->tpl_vars['KEY_VALUE']->value=='potentialname'){?>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['MODEL']->value->getDetailViewUrl();?>
"><?php echo $_smarty_tpl->tpl_vars['MODEL']->value->getName();?>
</a>
               <?php }else{ ?>  
                   <?php ob_start();?><?php echo $_smarty_tpl->tpl_vars['KEY_VALUE']->value;?>
<?php $_tmp2=ob_get_clean();?><?php echo $_smarty_tpl->tpl_vars['MODEL']->value->getDisplayValue($_tmp2);?>

                 <?php }?>
                </div>
                 <?php } ?>
                         
			</div>
		</div>
		<?php } ?>
	</div>
<?php }else{ ?>
	<span class="noDataMsg">
		<?php echo vtranslate('LBL_NO');?>
 <?php echo vtranslate($_smarty_tpl->tpl_vars['MODULE_NAME']->value,$_smarty_tpl->tpl_vars['MODULE_NAME']->value);?>
 <?php echo vtranslate('LBL_MATCHED_THIS_CRITERIA');?>

	</span>
<?php }?>
</div><?php }} ?>