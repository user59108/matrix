
<?php

    
function determineFirstLetter ($moduleName, $type) {

    // Frodis.ru - Начало
    // Шаблон для определения согласной буквы в начале строки
    $pattern = "/^[бвгджзклмнпрстфхцчшщ]{1}/iu";
    // Перевод названия модуля
    $module_name_translated = vtranslate('Module_PP', $moduleName);
    
    // Определение согласной буквы по шаблону $pattern
    $is_consonant = preg_match($pattern, $module_name_translated);
    if ($is_consonant) {
            // Если первая буква в строке согласная, тогда...
            $preposition = 'LBL_ABOUT_C';
    } else {
            // Если буква не согласная, а гласная, тогда...
            $preposition = 'LBL_ABOUT_V';
    }
    $preposition_translated = vtranslate($preposition, $moduleName);
    $details = vtranslate($type, $moduleName) . ' ' . $preposition_translated . ' ' . $module_name_translated;
    
    return $details;
    // Frodis.ru - Конец  
}