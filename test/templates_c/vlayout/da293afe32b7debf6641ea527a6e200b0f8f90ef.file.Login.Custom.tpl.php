<?php /* Smarty version Smarty-3.1.7, created on 2017-03-01 11:56:05
         compiled from "/var/www/crm/includes/runtime/../../layouts/vlayout/modules/Users/Login.Custom.tpl" */ ?>
<?php /*%%SmartyHeaderCode:162107031158b67e95ca5ea1-72005318%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'da293afe32b7debf6641ea527a6e200b0f8f90ef' => 
    array (
      0 => '/var/www/crm/includes/runtime/../../layouts/vlayout/modules/Users/Login.Custom.tpl',
      1 => 1470820830,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '162107031158b67e95ca5ea1-72005318',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'COMPANY_DETAILSCOMPANY_DETAILS' => 0,
    'COMPANY_DETAILS' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58b67e96075b8',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58b67e96075b8')) {function content_58b67e96075b8($_smarty_tpl) {?>
<!DOCTYPE html><html><head><title><?php echo vtranslate('TITLE_LOGIN_PAGE');?>
</title><meta name="viewport" content="width=device-width, initial-scale=1.0"><!-- for Login page we are added --><link href="libraries/bootstrap/css/bootstrap.min.css" rel="stylesheet"><link href="libraries/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet"><link href="libraries/bootstrap/css/jqueryBxslider.css" rel="stylesheet" /><script src="libraries/jquery/jquery.min.js"></script><script src="libraries/jquery/boxslider/jqueryBxslider.js"></script><script src="libraries/jquery/boxslider/respond.min.js"></script><script>jQuery(document).ready(function(){scrollx = jQuery(window).outerWidth();window.scrollTo(scrollx,0);slider = jQuery('.bxslider').bxSlider({auto: true,pause: 4000,randomStart : true,autoHover: true});jQuery('.bx-prev, .bx-next, .bx-pager-item').live('click',function(){ slider.startAuto(); });});</script><style>body {background-color: #fff;background: url('') no-repeat center center fixed;}</style></head><body><div class="container-fluid login-container"><div class="row-fluid"><div class="span3"><div class="logo"><img src="layouts/vlayout/skins/images/logo.png"><br /><a target="_blank" href="http://<?php echo $_smarty_tpl->tpl_vars['COMPANY_DETAILSCOMPANY_DETAILS']->value['website'];?>
"><?php echo $_smarty_tpl->tpl_vars['COMPANY_DETAILS']->value['name'];?>
</a></div></div><div class="span9"></div></div><div class="row-fluid"><div class="span12"><div class="content-wrapper"><div class="container-fluid"><div class="row-fluid"><div class="span6"></div><div class="span6"><div class="login-area"><div class="login-box" id="loginDiv"><div class=""><h3 class="login-header">Вход</h3></div><form class="form-horizontal login-form" style="margin:0;" action="index.php?module=Users&action=Login" method="POST"><?php if (isset($_REQUEST['error'])){?><div class="alert alert-error"><p><?php echo vtranslate('INVALID_USERNAME_PASSWORD');?>
</p></div><?php }?><?php if (isset($_REQUEST['fpError'])){?><div class="alert alert-error"><p><?php echo vtranslate('INVALID_USERNAME_EMAIL');?>
</p></div><?php }?><?php if (isset($_REQUEST['status'])){?><div class="alert alert-success"><p><?php echo vtranslate('MSG_MAIL_SENDED');?>
</p></div><?php }?><?php if (isset($_REQUEST['statusError'])){?><div class="alert alert-error"><p><?php echo vtranslate('MSG_MAIL_SERVER_ERR');?>
</p></div><?php }?><div class="control-group"><label class="control-label" for="username"><b><?php echo vtranslate('USER');?>
</b></label><div class="controls"><input type="text" id="username" name="username" placeholder=""></div></div><div class="control-group"><label class="control-label" for="password"><b><?php echo vtranslate('PASSWORD');?>
</b></label><div class="controls"><input type="password" id="password" name="password" placeholder=""></div></div><div class="control-group signin-button"><div class="controls" id="forgotPassword"><button type="submit" class="btn btn-primary sbutton"><?php echo vtranslate('SIGN_IN');?>
</button>&nbsp;&nbsp;&nbsp;<a><?php echo vtranslate('PASSWORD_RESTORE');?>
</a></div></div></form><div class="login-subscript"></div></div><div class="login-box hide" id="forgotPasswordDiv"><form class="form-horizontal login-form" style="margin:0;" action="forgotPassword.php" method="POST"><div class=""><h3 class="login-header"><?php echo vtranslate('LBL_FORGOT_PASSWORD');?>
</h3></div><div class="control-group"><label class="control-label" for="user_name"><b><?php echo vtranslate('USER');?>
</b></label><div class="controls"><input type="text" id="user_name" name="user_name" placeholder=""></div></div><div class="control-group"><label class="control-label" for="email"><b><?php echo vtranslate('EMAIL');?>
</b></label><div class="controls"><input type="text" id="emailId" name="emailId"  placeholder=""></div></div><div class="control-group signin-button"><div class="controls" id="backButton"><input type="submit" class="btn btn-primary sbutton" value="<?php echo vtranslate('SUBMIT');?>
" name="retrievePassword">&nbsp;&nbsp;&nbsp;<a><?php echo vtranslate('BACK');?>
</a></div></div></form></div></div></div></div></div></div></div></div></div><div class="navbar navbar-fixed-bottom"><div class="navbar-inner"><div class="container-fluid"><div class="row-fluid"><div class="span6 pull-left" ><div class="footer-content"><small></small></div></div><div class="span6 pull-right" ><div class="footer-content pull-right">&#169 <?php echo date('Y');?>
&nbsp;<a target="_blank" href="http://www.optimacrm.ru"> optimacrm.ru</a> | &nbsp;&#169 2004-<?php echo date('Y');?>
&nbsp;<a href="https://www.vtiger.com"> vtiger.com</a></div></div></div></div></div></div></body><script>jQuery(document).ready(function(){jQuery("#forgotPassword a").click(function() {jQuery("#loginDiv").hide();jQuery("#forgotPasswordDiv").show();});jQuery("#backButton a").click(function() {jQuery("#loginDiv").show();jQuery("#forgotPasswordDiv").hide();});jQuery("input[name='retrievePassword']").click(function (){var username = jQuery('#user_name').val();var email = jQuery('#emailId').val();var email1 = email.replace(/^\s+/,'').replace(/\s+$/,'');var emailFilter = /^[^@]+@[^@.]+\.[^@]*\w\w$/ ;var illegalChars= /[\(\)\<\>\,\;\:\\\"\[\]]/ ;if(username == ''){alert('Please enter valid username');return false;} else if(!emailFilter.test(email1) || email == ''){alert('Please enater valid email address');return false;} else if(email.match(illegalChars)){alert( "The email address contains illegal characters.");return false;} else {return true;}});});</script></html>
<?php }} ?>