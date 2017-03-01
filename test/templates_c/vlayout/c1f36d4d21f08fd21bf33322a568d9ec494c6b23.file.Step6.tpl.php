<?php /* Smarty version Smarty-3.1.7, created on 2017-03-01 11:55:04
         compiled from "/var/www/crm/includes/runtime/../../layouts/vlayout/modules/Install/Step6.tpl" */ ?>
<?php /*%%SmartyHeaderCode:764503158b67e5845bdb7-79378261%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c1f36d4d21f08fd21bf33322a568d9ec494c6b23' => 
    array (
      0 => '/var/www/crm/includes/runtime/../../layouts/vlayout/modules/Install/Step6.tpl',
      1 => 1470820830,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '764503158b67e5845bdb7-79378261',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'AUTH_KEY' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.7',
  'unifunc' => 'content_58b67e587c3ed',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_58b67e587c3ed')) {function content_58b67e587c3ed($_smarty_tpl) {?>
<form class="form-horizontal" name="step6" method="post" action="index.php">
	<input type=hidden name="module" value="Install" />
	<input type=hidden name="view" value="Index" />
	<input type=hidden name="mode" value="Step7" />
	<input type=hidden name="auth_key" value="<?php echo $_smarty_tpl->tpl_vars['AUTH_KEY']->value;?>
" />

	<div class="row-fluid main-container">
		<div class="inner-container">
			<div class="row-fluid">
				<div class="span10">
					<h4><?php echo vtranslate('LBL_ONE_LAST_THING','Install');?>
</h4>
				</div>
				<div class="span2">
					<a href="https://wiki.vtiger.com/vtiger6/" target="_blank" class="pull-right">
						<img src="<?php echo vimage_path('help.png');?>
" alt="Help-Icon"/>
					</a>
				</div>
			</div>
		    <hr>
			<div class="offset2 row-fluid">
				<div class="span8">
					<table class="config-table input-table">
						<tbody>
							<tr>
								<td>
									<strong><?php echo vtranslate('Please let us know your Industry','Install');?>
</strong> <span class="no">*</span>
								</td>
								<td>
									<select name="industry" class="select2" required="true" style="width:250px;" placeholder="Choose one...">
										<option value=""></option> 
										<option><?php echo vtranslate('Accounting','Install');?>
</option> 
										<option><?php echo vtranslate('Advertising','Install');?>
</option>
										<option><?php echo vtranslate('Agriculture','Install');?>
</option>
										<option><?php echo vtranslate('Apparel &amp; Accessories','Install');?>
</option>
										<option><?php echo vtranslate('Automotive','Install');?>
</option>
										<option><?php echo vtranslate('Banking &amp; Financial Services','Install');?>
</option>
										<option><?php echo vtranslate('Biotechnology','Install');?>
</option>
										<option><?php echo vtranslate('Call Centers','Install');?>
</option>
										<option><?php echo vtranslate('Careers/Employment','Install');?>
</option>
										<option><?php echo vtranslate('Chemical','Install');?>
</option>
										<option><?php echo vtranslate('Computer Hardware','Install');?>
</option>
										<option><?php echo vtranslate('Computer Software','Install');?>
</option>
										<option><?php echo vtranslate('Consulting','Install');?>
</option>
										<option><?php echo vtranslate('Construction','Install');?>
</option>
										<option><?php echo vtranslate('Education','Install');?>
</option>
										<option><?php echo vtranslate('Energy Services','Install');?>
</option>
										<option><?php echo vtranslate('Engineering','Install');?>
</option>
										<option><?php echo vtranslate('Entertainment','Install');?>
</option>
										<option><?php echo vtranslate('Financial','Install');?>
</option>
										<option><?php echo vtranslate('Food &amp; Food Service','Install');?>
</option>
										<option><?php echo vtranslate('Government','Install');?>
</option>
										<option><?php echo vtranslate('Health care','Install');?>
</option>
										<option><?php echo vtranslate('Insurance','Install');?>
</option>
										<option><?php echo vtranslate('Legal','Install');?>
</option>
										<option><?php echo vtranslate('Logistics','Install');?>
</option>
										<option><?php echo vtranslate('Manufacturing','Install');?>
</option>
										<option><?php echo vtranslate('Media &amp; Production','Install');?>
</option>
										<option><?php echo vtranslate('Non-profit','Install');?>
</option>
										<option><?php echo vtranslate('Pharmaceutical','Install');?>
</option>
										<option><?php echo vtranslate('Real Estate','Install');?>
</option>
										<option><?php echo vtranslate('Rental','Install');?>
</option>
										<option><?php echo vtranslate('Retail &amp; Wholesale','Install');?>
</option>
										<option><?php echo vtranslate('Security','Install');?>
</option>
										<option><?php echo vtranslate('Service','Install');?>
</option>
										<option><?php echo vtranslate('Sports','Install');?>
</option>
										<option><?php echo vtranslate('Telecommunications','Install');?>
</option>
										<option><?php echo vtranslate('Transportation','Install');?>
</option>
										<option><?php echo vtranslate('Travel &amp; Tourism','Install');?>
</option>
										<option><?php echo vtranslate('Utilities','Install');?>
</option>
										<option><?php echo vtranslate('Other','Install');?>
</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									<?php echo vtranslate('We collect anonymous information (Country, OS) to help us improve future versions of Vtiger.','Install');?>

									<?php echo vtranslate('Data about how CRM is used and where it is being used helps us identify the areas in the product that need to be enhanced.','Install');?>

									<?php echo vtranslate('We use this data to improve your experience with Vtiger.','Install');?>
 
									<?php echo vtranslate('None of the data collected here can be linked back to an individual.','Install');?>

								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row-fluid offset2">
				<div class="span8">
					<div class="button-container">
						<input type="button" class="btn btn-large btn-primary" value="<?php echo vtranslate('LBL_NEXT','Install');?>
" name="step7"/>
					</div>
				</div>
			</div>
		</div>
	</div>
</form>

<div id="progressIndicator" class="row-fluid main-container hide">
	<div class="inner-container">
		<div class="span12 inner-container">
			<div class="row-fluid">
				<div class="span12 welcome-div alignCenter">
					<h3><?php echo vtranslate('LBL_INSTALLATION_IN_PROGRESS','Install');?>
...</h3><br>
					<img src="<?php echo vimage_path('install_loading.gif');?>
"/>
					<h6><?php echo vtranslate('LBL_PLEASE_WAIT','Install');?>
.... </h6>
				</div>
			</div>
		</div>
	</div>
</div>
</div><?php }} ?>