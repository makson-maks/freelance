﻿
Функция СведенияОВнешнейОбработке() Экспорт
	
	ПараметрыРегистрации = ДополнительныеОтчетыИОбработки.СведенияОВнешнейОбработке("2.2.2.1");
    ПараметрыРегистрации.Вид = ДополнительныеОтчетыИОбработкиКлиентСервер.ВидОбработкиЗаполнениеОбъекта();
    ПараметрыРегистрации.Версия = "1.0";
	
	МассивНазначений = Новый Массив;
	МассивНазначений.Добавить("Документ.РеализацияТоваровУслуг");
	
	ПараметрыРегистрации.Назначение = МассивНазначений;
	
	Команда = ПараметрыРегистрации.Команды.Добавить();
    Команда.Представление = НСтр("ru = 'Подбор'");
    Команда.Идентификатор = "Подбор";
    Команда.Использование = ДополнительныеОтчетыИОбработкиКлиентСервер.ТипКомандыОткрытиеФормы();
    Команда.ПоказыватьОповещение = Истина;
	
    Возврат ПараметрыРегистрации; 
	
КонецФункции