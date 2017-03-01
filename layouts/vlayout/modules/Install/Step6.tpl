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
<form class="form-horizontal" name="step6" method="post" action="index.php">
	<input type=hidden name="module" value="Install" />
	<input type=hidden name="view" value="Index" />
	<input type=hidden name="mode" value="Step7" />
	<input type=hidden name="auth_key" value="{$AUTH_KEY}" />

	<div class="row-fluid main-container">
		<div class="inner-container">
			<div class="row-fluid">
				<div class="span10">
					<h4>{vtranslate('LBL_ONE_LAST_THING','Install')}</h4>
				</div>
				<div class="span2">
					<a href="https://wiki.vtiger.com/vtiger6/" target="_blank" class="pull-right">
						<img src="{'help.png'|vimage_path}" alt="Help-Icon"/>
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
									<strong>{vtranslate('Please let us know your Industry','Install')}</strong> <span class="no">*</span>
								</td>
								<td>
									<select name="industry" class="select2" required="true" style="width:250px;" placeholder="Choose one...">
										<option value=""></option> 
										<option>{vtranslate('Accounting','Install')}</option> 
										<option>{vtranslate('Advertising','Install')}</option>
										<option>{vtranslate('Agriculture','Install')}</option>
										<option>{vtranslate('Apparel &amp; Accessories','Install')}</option>
										<option>{vtranslate('Automotive','Install')}</option>
										<option>{vtranslate('Banking &amp; Financial Services','Install')}</option>
										<option>{vtranslate('Biotechnology','Install')}</option>
										<option>{vtranslate('Call Centers','Install')}</option>
										<option>{vtranslate('Careers/Employment','Install')}</option>
										<option>{vtranslate('Chemical','Install')}</option>
										<option>{vtranslate('Computer Hardware','Install')}</option>
										<option>{vtranslate('Computer Software','Install')}</option>
										<option>{vtranslate('Consulting','Install')}</option>
										<option>{vtranslate('Construction','Install')}</option>
										<option>{vtranslate('Education','Install')}</option>
										<option>{vtranslate('Energy Services','Install')}</option>
										<option>{vtranslate('Engineering','Install')}</option>
										<option>{vtranslate('Entertainment','Install')}</option>
										<option>{vtranslate('Financial','Install')}</option>
										<option>{vtranslate('Food &amp; Food Service','Install')}</option>
										<option>{vtranslate('Government','Install')}</option>
										<option>{vtranslate('Health care','Install')}</option>
										<option>{vtranslate('Insurance','Install')}</option>
										<option>{vtranslate('Legal','Install')}</option>
										<option>{vtranslate('Logistics','Install')}</option>
										<option>{vtranslate('Manufacturing','Install')}</option>
										<option>{vtranslate('Media &amp; Production','Install')}</option>
										<option>{vtranslate('Non-profit','Install')}</option>
										<option>{vtranslate('Pharmaceutical','Install')}</option>
										<option>{vtranslate('Real Estate','Install')}</option>
										<option>{vtranslate('Rental','Install')}</option>
										<option>{vtranslate('Retail &amp; Wholesale','Install')}</option>
										<option>{vtranslate('Security','Install')}</option>
										<option>{vtranslate('Service','Install')}</option>
										<option>{vtranslate('Sports','Install')}</option>
										<option>{vtranslate('Telecommunications','Install')}</option>
										<option>{vtranslate('Transportation','Install')}</option>
										<option>{vtranslate('Travel &amp; Tourism','Install')}</option>
										<option>{vtranslate('Utilities','Install')}</option>
										<option>{vtranslate('Other','Install')}</option>
									</select>
								</td>
							</tr>
							<tr>
								<td colspan="2">
									{vtranslate('We collect anonymous information (Country, OS) to help us improve future versions of Vtiger.','Install')}
									{vtranslate('Data about how CRM is used and where it is being used helps us identify the areas in the product that need to be enhanced.','Install')}
									{vtranslate('We use this data to improve your experience with Vtiger.','Install')} 
									{vtranslate('None of the data collected here can be linked back to an individual.','Install')}
								</td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div class="row-fluid offset2">
				<div class="span8">
					<div class="button-container">
						<input type="button" class="btn btn-large btn-primary" value="{vtranslate('LBL_NEXT','Install')}" name="step7"/>
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
					<h3>{vtranslate('LBL_INSTALLATION_IN_PROGRESS','Install')}...</h3><br>
					<img src="{'install_loading.gif'|vimage_path}"/>
					<h6>{vtranslate('LBL_PLEASE_WAIT','Install')}.... </h6>
				</div>
			</div>
		</div>
	</div>
</div>
</div>