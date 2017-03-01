/*+**********************************************************************************
 * The contents of this file are subject to the vtiger CRM Public License Version 1.0
 * ("License"); You may not use this file except in compliance with the License
 * The Original Code is:  vtiger CRM Open Source
 * The Initial Developer of the Original Code is vtiger.
 * Portions created by vtiger are Copyright (C) vtiger.
 * All Rights Reserved.
 ************************************************************************************/
jQuery.Class('Install_Index_Js', {}, {

	registerEventForStep3 : function() {
		jQuery('#recheck').on('click', function() {
			window.location.reload();
		});

		jQuery('input[name="step4"]').on('click', function(e){
			var elements = jQuery('.no')
			if(elements.length > 0) {
				
                                //var msg = "Some of the PHP Settings do not meet the recommended values. This might affect some of the features of vtiger CRM. Are you sure, you want to proceed?";
                                // Frodis.ru - Начало
                                var msg = 'Некоторые настройки PHP неудовлетворяют рекомендуемым, что может сказаться на дальнейшей работоспособности некоторых функций CRM. Вы уверены, что хотите продолжить?';
                                // Frodis.ru - Конец
                                
				if(confirm(msg)) {
					jQuery('form[name="step3"]').submit();
					return true;
				} else {
					return false;
				}
			}
			jQuery('form[name="step3"]').submit();
		});
	},

	registerEventForStep4 : function() {
		jQuery('input[type="text"]').css('width','210px');

		jQuery('input[name="create_db"]').on('click', function(){
			var userName = jQuery('#root_user');
			var password = jQuery('#root_password');
			var classU = userName.attr('class');
			if(classU=='hide') userName.removeClass('hide');
			else userName.addClass('hide');

			var classP = password.attr('class');
			if(classP=='hide') password.removeClass('hide');
			else password.addClass('hide');
		});

		function clearPasswordError() {
			jQuery('#passwordError').html('');
		}

		function setPasswordError() {
                        //jQuery('#passwordError').html('Please re-enter passwords.  The \"Password\" and \"Re-type password\" values do not match.');
                        // Frodis.ru - Начало
			jQuery('#passwordError').html('Пароль необходимо ввести снова. Данные в поле \"Пароль\" и \"Повторить пароль\" не совпадают.');
                        // Frodis.ru - Конец
		}

		jQuery('input[name="retype_password"]').on('blur', function(e){
			var element = jQuery(e.currentTarget);
			var password = jQuery('input[name="password"]').val();
			if(password !== element.val()) {
				setPasswordError();
			}
		});

		jQuery('input[name="password"]').on('blur', function(e){
			var retypePassword = jQuery('input[name="retype_password"]');
			if(retypePassword.val() != '' && retypePassword.val() !== jQuery(e.currentTarget).val()) {
                                //jQuery('#passwordError').html('Please re-enter passwords.  The \"Password\" and \"Re-type password\" values do not match.');
                                // Frodis.ru - Начало
				jQuery('#passwordError').html('Пароль необходимо ввести снова. Данные в поле \"Пароль\" и \"Повторить пароль\" не совпадают.');
                                // Frodis.ru - Конец
			} else {
				clearPasswordError();
			}
		});

		jQuery('input[name="retype_password"]').on('keypress', function(e){
			clearPasswordError();
		});

		jQuery('input[name="step5"]').on('click', function() {
			var error = false;
			var validateFieldNames = ['db_hostname', 'db_username', 'db_name', 'password', 'retype_password', 'lastname', 'admin_email'];
			for(var fieldName in validateFieldNames) {
				var field = jQuery('input[name="'+validateFieldNames[fieldName]+'"]');
				if(field.val() == '') {
					field.addClass('error').focus();
					error = true; break;
				} else {
					field.removeClass('error');
				}
			}

			var createDatabase = jQuery('input[name="create_db"]:checked');
			if(createDatabase.length > 0) {
				var dbRootUser = jQuery('input[name="db_root_username"]');
				if(dbRootUser.val() == '') {
					dbRootUser.addClass('error').focus();
					error = true;
				} else {
					dbRootUser.removeClass('error');
				}
			}
			var password = jQuery('#passwordError');
			if(password.html() != '') error = true;

                        var emailField = jQuery('input[name="admin_email"]'); 
                        var regex = /^[_/a-zA-Z0-9*]+([!"#$%&'()*+,./:;<=>?\^_`{|}~-]?[a-zA-Z0-9/_/-])*@[a-zA-Z0-9]+([\_\-\.]?[a-zA-Z0-9]+)*\.([\-\_]?[a-zA-Z0-9])+(\.?[a-zA-Z0-9]+)?$/;
                        if(!regex.test(emailField.val()) && emailField.val()!=''){ 
                            var invalidEmailAddress=true; 
                            emailField.addClass('error').focus();  
                            error = true; 
                         }else{ 
                             emailField.removeClass('error'); 
                         } 
                         
			if(error) {
                            var content;
                            
                                /*
                                if(invalidEmailAddress){ 
                                    content = '<div class="span12">'+ 
                                                                            '<div class="alert alert-error">'+ 
                                                                                    '<button class="close" data-dismiss="alert" type="button">x</button>'+ 
                                                                                    'Warning! Invalid email address.'+ 
                                                                            '</div>'+ 
                                                                    '</div>'; 
                                }else{ 
                                    content = '<div class="span12">'+ 
									'<div class="alert alert-error">'+
										'<button class="close" data-dismiss="alert" type="button">x</button>'+
										'Warning! Required fields missing values.'+
									'</div>'+
								'</div>';
                                }
                                */
                                // Frodis.ru - Начало
				if(invalidEmailAddress){
                                    content = '<div class="span12">'+ 
                                                                            '<div class="alert alert-error">'+ 
                                                                                    '<button class="close" data-dismiss="alert" type="button">x</button>' + 
                                                                                    'Предупреждение! Неправильный формат Email\'а.' + 
                                                                            '</div>' + 
                                                                    '</div>'; 
                                }else{ 
                                    content = '<div class="span12">'+ 
									'<div class="alert alert-error">'+
										'<button class="close" data-dismiss="alert" type="button">x</button>' +
										'Предупреждение! Не все обязательные поля заполнены.' 
									'</div>' +
								'</div>';
                                }
                                // Frodis.ru - Конец
                                
				jQuery('#errorMessage').html(content).show();
			} else {
				jQuery('form[name="step4"]').submit();
			}
		});
	},

	registerEventForStep5 : function() {
		jQuery('input[name="step6"]').on('click', function() {
			var error = jQuery('#errorMessage');
			if(error.length) {
                            
                                //alert('Please resolve the error before proceeding with the installation');
                                // Frodis.ru - Начало
				alert('Пожалуйста, исправьте ошибки перед продолжением установки');
                                // Frodis.ru - Конец
                                
				return false;
			} else {
				jQuery('form[name="step5"]').submit().hide();
			}
		});
	},
	
	registerEventForStep6 : function() {
		jQuery('input[name="step7"]').on('click', function() {
                        /*
			var industry = jQuery('select[name="industry"]').val();
			if (industry.length < 1) {
                                
                                //alert('Please select appropriate industry option.');
                                // Frodis.ru - Начало
                                alert('Выберите подходящий вид деятельности.');
                                // Frodis.ru - Конец
                                
			} else {
				jQuery('#progressIndicator').show();
				jQuery('form[name="step6"]').submit().hide();
			}
                        */
                       // Frodis.ru - Начало
                       // Уберём выбор вида деятельности
                        jQuery('#progressIndicator').show();
                        jQuery('form[name="step6"]').submit().hide();                       
                       // Frodis.ru - Конец
		});
	},

	registerEvents : function() {
		jQuery('input[name="back"]').on('click', function() {
			var createDatabase = jQuery('input[name="create_db"]:checked');
			if(createDatabase.length > 0) {
				jQuery('input[name="create_db"]').removeAttr('checked');
			}
			window.history.back();
		});
		this.registerEventForStep3();
		this.registerEventForStep4();
		this.registerEventForStep5();
		this.registerEventForStep6();
	}
});

