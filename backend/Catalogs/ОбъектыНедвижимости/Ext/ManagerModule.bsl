﻿
Функция ПолучитьСписок() Экспорт
	
	Запрос = Новый Запрос;
	Запрос.Текст =
	"ВЫБРАТЬ
	|	ОбъектыНедвижимости.Код КАК Код,
	|	ОбъектыНедвижимости.Наименование КАК Наименование,
	|	ОбъектыНедвижимости.ВидЖилья КАК ВидЖилья,
	|	ОбъектыНедвижимости.ЦенаЗаНочь КАК ЦенаЗаНочь,
	|	ОбъектыНедвижимости.КоличествоКомнат КАК КоличествоКомнат,
	|	ОбъектыНедвижимости.КоличествоМест КАК КоличествоМест,
	|	ОбъектыНедвижимости.ВремяЗаезда КАК ВремяЗаезда,
	|	ОбъектыНедвижимости.ВремяВыезда КАК ВремяВыезда,
	|	ОбъектыНедвижимости.Описание КАК Описание,
	|	ОбъектыНедвижимости.Адрес КАК Адрес,
	|	ОбъектыНедвижимости.КоординатаХ КАК КоординатаХ,
	|	ОбъектыНедвижимости.КоординатаУ КАК КоординатаУ,
	|	ОбъектыНедвижимости.ПутьКАватарке КАК ПутьКАватарке,
	|	ОбъектыНедвижимости.Ссылка КАК Ссылка
	|ИЗ
	|	Справочник.ОбъектыНедвижимости КАК ОбъектыНедвижимости
	|ГДЕ
	|	ОбъектыНедвижимости.ПометкаУдаления = ЛОЖЬ";
	
	Возврат Запрос.Выполнить().Выгрузить();
	
КонецФункции