# encoding: utf-8
# language: ru

Функционал: Тестирование горячих клавиш в 8.3.7

Как Администратор
Я хочу проверить работу горячих клавиш
Чтобы проверить совместимость платформ

Контекст: 
	Дано я закрываю все клиенты принудительно
	И Пауза 2
	И Я открыл новый сеанс TestClient или подключил уже существующий

Сценарий: Проверка выполнения команд
	
	И открылось окно "Начальная страница"
	И     В открытой форме я нажимаю на кнопку "Я первая кнопка"
	Тогда левая колонка состава форм начальной страницы содержит "Обработка.ТестоваяОбработка.Форма.ВтораяФорма"
	И     В открытой форме я нажимаю на кнопку "Я вторая кнопка"
	Тогда левая колонка состава форм начальной страницы содержит "Обработка.ТестоваяОбработка.Форма.ПерваяФорма"
	Дано я закрываю все клиенты принудительно
	И Пауза 2

Сценарий: Проверка выполнения команд с помощью горячих
	Когда выполнил команду "e1cib/navigationpoint/startpage"
	И открылось окно "Начальная страница"
	И я нажимаю горячую клавишу "{F7}"
	Тогда левая колонка состава форм начальной страницы содержит "Обработка.ТестоваяОбработка.Форма.ВтораяФорма"
	И я нажимаю горячую клавишу "{F7}"
	Тогда левая колонка состава форм начальной страницы содержит "Обработка.ТестоваяОбработка.Форма.ПерваяФорма"