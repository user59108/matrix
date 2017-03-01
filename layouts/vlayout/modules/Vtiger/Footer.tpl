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
		<input id='activityReminder' class='hide noprint' type="hidden" value="{$ACTIVITY_REMINDER}"/>

		{* Feedback side-panel button *}
		{if $HEADER_LINKS && $MAIN_PRODUCT_SUPPORT && !$MAIN_PRODUCT_WHITELABEL}
		{assign var="FIRSTHEADERLINK" value=$HEADER_LINKS.0}
		{assign var="FIRSTHEADERLINKCHILDRENS" value=$FIRSTHEADERLINK->get('childlinks')}
		{assign var="FEEDBACKLINKMODEL" value=$FIRSTHEADERLINKCHILDRENS.2}
		<div id="userfeedback" class="feedback noprint">
			<a href="https://discussions.vtiger.com" target="_blank" xonclick="{$FEEDBACKLINKMODEL->get('linkurl')}" class="handle">{vtranslate("LBL_FEEDBACK", "Vtiger")}</a>
		</div>
		{/if}

		{if !$MAIN_PRODUCT_WHITELABEL && isset($CURRENT_USER_MODEL)}
		<footer class="noprint">
                    <div class="vtFooter">
			<p>
                                {* Frodis.ru - Начало *}
                                {*
				{vtranslate('POWEREDBY')} {$VTIGER_VERSION} &nbsp;
                                *}
                                {* Frodis.ru - Конец *}
                                
                                &copy; {date('Y')}&nbsp&nbsp;
				<a href="http://www.optimacrm.ru" target="_blank">optimacrm.ru</a>                                
                                
                                &nbsp;|&nbsp;
                                
				&copy; 2004 - {date('Y')}&nbsp
				<a href="//www.vtiger.com" target="_blank">vtiger.com</a>
                                {* Frodis.ru - Начало *}
                                {*                                
                                &nbsp;|&nbsp;
				<a href="#" onclick="window.open('../copyright.html','copyright', 'height=115,width=575').moveTo(210,620)">{vtranslate('LBL_READ_LICENSE')}</a>
				&nbsp;|&nbsp;
				<a href="https://www.vtiger.com/crm/privacy-policy" target="_blank">{vtranslate('LBL_PRIVACY_POLICY')}</a>
                                *}
                                {* Frodis.ru - Конец *} 
			</p>
                     </div>
		</footer>
		{/if}
		
		{* javascript files *}
		{include file='JSResources.tpl'|@vtemplate_path}
		</div>
		
	</body>
</html>
{/strip}
