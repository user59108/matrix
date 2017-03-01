{*<!--
/*********************************************************************************
** The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
*
 ********************************************************************************/
-->*}
{strip}
<!DOCTYPE html>
<html>
	<head>
		{*}<title>Vtiger login page</title>{*}
                {* Frodis.ru - Начало *}
		<title>{vtranslate('TITLE_LOGIN_PAGE')}</title>
                {* Frodis.ru - Конец *}
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<!-- for Login page we are added -->
		<link href="libraries/bootstrap/css/bootstrap.min.css" rel="stylesheet">
		<link href="libraries/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
		<link href="libraries/bootstrap/css/jqueryBxslider.css" rel="stylesheet" />
		<script src="libraries/jquery/jquery.min.js"></script>
		<script src="libraries/jquery/boxslider/jqueryBxslider.js"></script>
		<script src="libraries/jquery/boxslider/respond.min.js"></script>
		<script>
			jQuery(document).ready(function(){
				scrollx = jQuery(window).outerWidth();
				window.scrollTo(scrollx,0);
				slider = jQuery('.bxslider').bxSlider({
				auto: true,
				pause: 4000,
				randomStart : true,
				autoHover: true
			});
			jQuery('.bx-prev, .bx-next, .bx-pager-item').live('click',function(){ slider.startAuto(); });
			}); 
		</script>
                
                {* Frodis.ru - Начало *}
                <style>
                    {* Уберём задний фон, порождённый jqueryBxslider.css *}
                    body {
                        background-color: #fff;
                        background: url('') no-repeat center center fixed;
                    }
                </style>
                {* Frodis.ru - Конец *}
                
	</head>
	<body>
		<div class="container-fluid login-container">
			<div class="row-fluid">
				<div class="span3">
					<div class="logo"><img src="layouts/vlayout/skins/images/logo.png">
					<br />
					<a target="_blank" href="http://{$COMPANY_DETAILSCOMPANY_DETAILS.website}">{$COMPANY_DETAILS.name}</a>
					</div>
				</div>
				<div class="span9">
                                    {* Frodis.ru - Начало *}
                                    {*
					<div class="helpLinks">
						<a href="https://www.vtiger.com">Vtiger Website</a> | 
						<a href="https://wiki.vtiger.com/vtiger6/">Vtiger Wiki</a> | 
						<a href="https://www.vtiger.com/crm/videos/">Vtiger videos </a> | 
						<a href="https://discussions.vtiger.com/">Vtiger Forums</a> 
					</div>
                                     *}
                                    {* Frodis.ru - Конец *}
				</div>
			</div>
			<div class="row-fluid">
				<div class="span12">
					<div class="content-wrapper">
						<div class="container-fluid">
							<div class="row-fluid">
								<div class="span6">
                                                                    
                                                                    {* Frodis.ru - Начало *}
                                                                    {* Уберём слайдшоу *}
                                                                    {*} 
									<div class="carousal-container">
										<div><h2> Get more out of Vtiger </h2></div>
										<ul class="bxslider">
											<li>
												<div id="slide01" class="slide">
													<img class="pull-left" src="{vimage_path('android_text.png')}">
													<img class="pull-right" src="{vimage_path('android.png')}"/>
												</div>
											</li>
											<li>
												<div id="slide02" class="slide">
													<img class="pull-left" src="{vimage_path('iphone_text.png')}"/>
													<img class="pull-right" src="{vimage_path('iphone.png')}"/>
												</div>
											</li>
											<li>
												<div id="slide03" class="slide">
													<img class="pull-left" src="{vimage_path('ipad_text.png')}"/>
													<img class="pull-right" src="{vimage_path('ipad.png')}"/>
												</div>
											</li>
											<li>
												<div id="slide04" class="slide">
													<img class="pull-left" src="{vimage_path('exchange_conn_text.png')}"/>
													<img class="pull-right" src="{vimage_path('exchange_conn.png')}"/>
												</div>
											</li>
											<li>
												<div id="slide05" class="slide">
													<img class="pull-left" src="{vimage_path('outlook_text.png')}"/>
													<img class="pull-right" src="{vimage_path('outlook.png')}"/>
												</div>
											</li>
										</ul>
									</div>
                                                                {*}
                                                                {* Frodis.ru - Конец *}
                                                                </div>
								<div class="span6">
									<div class="login-area">
										<div class="login-box" id="loginDiv">
											<div class="">
												{*<h3 class="login-header">Login to Vtiger CRM</h3>*}
                                                                                                <h3 class="login-header">Вход</h3>
		</div>
											<form class="form-horizontal login-form" style="margin:0;" action="index.php?module=Users&action=Login" method="POST">
			{if isset($smarty.request.error)}
			<div class="alert alert-error">
				{*}<p>Invalid username or password.</p>{*}
                                {* Frodis.ru - Начало *}
                                <p>{vtranslate('INVALID_USERNAME_PASSWORD')}</p>
                                {* Frodis.ru - Конец *}
			</div>
			{/if}
												{if isset($smarty.request.fpError)}
													<div class="alert alert-error">
														{*}<p>Invalid Username or Email address.</p>{*}
                                                                                                                {* Frodis.ru - Начало *}
                                                                                                                <p>{vtranslate('INVALID_USERNAME_EMAIL')}</p>
                                                                                                                {* Frodis.ru - Конец *}
													</div>
												{/if}
												{if isset($smarty.request.status)}
													<div class="alert alert-success">
														{*}<p>Mail was send to your inbox, please check your e-mail.</p>{*}
                                                                                                                {* Frodis.ru - Начало *}
                                                                                                                <p>{vtranslate('MSG_MAIL_SENDED')}</p>
                                                                                                                {* Frodis.ru - Конец *} 
													</div>
												{/if}
												{if isset($smarty.request.statusError)}
													<div class="alert alert-error">
														{*}<p>Outgoing mail server was not configured.</p>{*}
                                                                                                                {* Frodis.ru - Начало *}
                                                                                                                <p>{vtranslate('MSG_MAIL_SERVER_ERR')}</p>
                                                                                                                {* Frodis.ru - Конец *}
													</div>
												{/if}
												<div class="control-group">
													<label class="control-label" for="username">
                                                                                                            {*}<b>User name</b>{*}
                                                                                                            {* Frodis.ru - Начало *}
                                                                                                            <b>{vtranslate('USER')}</b>
                                                                                                            {* Frodis.ru - Конец *} 
                                                                                                        </label>
													<div class="controls">
                                                                                                                {*<input type="text" id="username" name="username" placeholder="Username">*}
                                                                                                                {* Frodis.ru - Начало *}
														<input type="text" id="username" name="username" placeholder="">
                                                                                                                {* Frodis.ru - Конец *} 
													</div>
												</div>

			<div class="control-group">
													<label class="control-label" for="password">
                                                                                                            {*}<b>Password</b>{*}
                                                                                                            {* Frodis.ru - Начало *}
                                                                                                            <b>{vtranslate('PASSWORD')}</b>
                                                                                                            {* Frodis.ru - Конец *}
                                                                                                        </label>
				<div class="controls">
                                                                                                                {*}<input type="password" id="password" name="password" placeholder="Password">{*}
                                                                                                                {* Frodis.ru - Начало *}
														<input type="password" id="password" name="password" placeholder="">
                                                                                                                {* Frodis.ru - Конец *} 
													</div>
												</div>
												<div class="control-group signin-button">
													<div class="controls" id="forgotPassword">
                                                                                                            {*
														<button type="submit" class="btn btn-primary sbutton">Sign in</button>
														&nbsp;&nbsp;&nbsp;<a>Forgot Password ?</a>
                                                                                                            *}
                                                                                                                {* Frodis.ru - Начало *}
														<button type="submit" class="btn btn-primary sbutton">{vtranslate('SIGN_IN')}</button>
														&nbsp;&nbsp;&nbsp;<a>{vtranslate('PASSWORD_RESTORE')}</a>
                                                                                                                {* Frodis.ru - Конец *} 
													</div>
												</div>
                                                                                                {* Frodis.ru - Начало *}
                                                                                                {* Уберём код отслеживания входа в CRM. *}
												{* Retain this tracker to help us get usage details *}
                                                                                                {*
												<img src='//stats.vtiger.com/stats.php?uid={$APPUNIQUEKEY}&v={$CURRENT_VERSION}&type=U' alt='' title='' border=0 width='1px' height='1px'>
                                                                                                *}
                                                                                                {* Frodis.ru - Конец *}
											</form>
											<div class="login-subscript">
												{* Frodis.ru - Начало *}
                                                                                                {*
                                                                                                    <small> Powered by vtiger CRM {$CURRENT_VERSION}</small>
                                                                                                *}
                                                                                                {* Frodis.ru -Конец *}
											</div>
				</div>
										
										<div class="login-box hide" id="forgotPasswordDiv">
											<form class="form-horizontal login-form" style="margin:0;" action="forgotPassword.php" method="POST">
												<div class="">
                                                                                                        {*<h3 class="login-header">Forgot Password</h3>*}
                                                                                                        {* Frodis.ru - Начало *}
                                                                                                        <h3 class="login-header">{vtranslate('LBL_FORGOT_PASSWORD')}</h3>
                                                                                                        {* Frodis.ru - Конец *} 
													
			</div>
			<div class="control-group">
													<label class="control-label" for="user_name">
                                                                                                            {*}<b>User name</b>{*}
                                                                                                            {* Frodis.ru - Начало *}
                                                                                                            <b>{vtranslate('USER')}</b>
                                                                                                            {* Frodis.ru - Конец *}
                                                                                                        </label>
				<div class="controls">
                                                                                                                {*}<input type="text" id="user_name" name="user_name" placeholder="Username">{*}
                                                                                                                {* Frodis.ru - Начало *}
														<input type="text" id="user_name" name="user_name" placeholder="">
                                                                                                                {* Frodis.ru - Конец *} 
				</div>
			</div>
												<div class="control-group">
													<label class="control-label" for="email">
                                                                                                            {*}<b>Email</b>{*}
                                                                                                            {* Frodis.ru - Начало *}
                                                                                                            <b>{vtranslate('EMAIL')}</b>
                                                                                                            {* Frodis.ru - Конец *} 
                                                                                                        </label>
													<div class="controls">
														{*}<input type="text" id="emailId" name="emailId"  placeholder="Email">{*}
                                                                                                                {* Frodis.ru - Начало *}
														<input type="text" id="emailId" name="emailId"  placeholder="">
                                                                                                                {* Frodis.ru - Конец *}
													</div>
		</div>
												<div class="control-group signin-button">
													<div class="controls" id="backButton">
                                                                                                                {*
                                                                                                                    <input type="submit" class="btn btn-primary sbutton" value="Submit" name="retrievePassword">
                                                                                                                    &nbsp;&nbsp;&nbsp;<a>Back</a>
                                                                                                                *}
                                                                                                                {* Frodis.ru - Начало *}
														<input type="submit" class="btn btn-primary sbutton" value="{vtranslate('SUBMIT')}" name="retrievePassword">
                                                                                                                &nbsp;&nbsp;&nbsp;<a>{vtranslate('BACK')}</a>                                                                                                                
                                                                                                                {* Frodis.ru - Конец *}
		</div>
	</div>
</form>
										</div>
										
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="navbar navbar-fixed-bottom">
			<div class="navbar-inner">
				<div class="container-fluid">
					<div class="row-fluid">
						<div class="span6 pull-left" >
							<div class="footer-content">
								<small>
                                                                    {*}
                                                                    &#169 2004-{date('Y')}&nbsp;
									<a href="https://www.vtiger.com"> vtiger.com</a> | 
									<a href="https://www.vtiger.com/LICENSE.txt">Read License</a> | 
									<a href="https://www.vtiger.com/products/crm/privacy_policy.html">Privacy Policy</a> 
                                                                    {*}
                                                                </small>
							</div>
						</div>
						<div class="span6 pull-right" >
                                                    {*}
							<div class="pull-right footer-icons">
								<small>{vtranslate('LBL_CONNECT_WITH_US', $MODULE)}&nbsp;</small>
								<a href="https://www.facebook.com/vtiger"><img src="layouts/vlayout/skins/images/facebook.png"></a>
								&nbsp;<a href="https://twitter.com/vtigercrm"><img src="layouts/vlayout/skins/images/twitter.png"></a>
								&nbsp;<a href="https://www.linkedin.com/company/vtiger-systems-india-pvt-ltd"><img src="layouts/vlayout/skins/images/linkedin.png"></a>
								&nbsp;<a href="http://www.youtube.com/user/vtigercrm"><img src="layouts/vlayout/skins/images/youtube.png"></a> 
							</div>
                                                    {*}
                                                    {* Frodis.ru - Начало *}
                                                    <div class="footer-content pull-right">
                                                        &#169 {date('Y')}&nbsp;<a target="_blank" href="http://www.optimacrm.ru"> optimacrm.ru</a> | &nbsp;
                                                        &#169 2004-{date('Y')}&nbsp;<a href="https://www.vtiger.com"> vtiger.com</a>
                                                    </div>
                                                    {* Frodis.ru - Конец *}
						</div>
					</div>   
				</div>    
			</div>   
		</div>
	</body>
	<script>
		jQuery(document).ready(function(){
			jQuery("#forgotPassword a").click(function() {
				jQuery("#loginDiv").hide();
				jQuery("#forgotPasswordDiv").show();
			});
			
			jQuery("#backButton a").click(function() {
				jQuery("#loginDiv").show();
				jQuery("#forgotPasswordDiv").hide();
			});
			
			jQuery("input[name='retrievePassword']").click(function (){
				var username = jQuery('#user_name').val();
				var email = jQuery('#emailId').val();
				
				var email1 = email.replace(/^\s+/,'').replace(/\s+$/,'');
				var emailFilter = /^[^@]+@[^@.]+\.[^@]*\w\w$/ ;
				var illegalChars= /[\(\)\<\>\,\;\:\\\"\[\]]/ ;
				
				if(username == ''){
					alert('Please enter valid username');
					return false;
				} else if(!emailFilter.test(email1) || email == ''){
					alert('Please enater valid email address');
					return false;
				} else if(email.match(illegalChars)){
					alert( "The email address contains illegal characters.");
					return false;
				} else {
					return true;
				}
				
			});
		});
	</script>
</html>	
{/strip}
