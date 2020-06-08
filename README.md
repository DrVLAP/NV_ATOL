Для автоматизации был выбран язык Ruby в связке с Capybara + Cucumber, т.к. окружение уже было поднято и настроено, поэтому так было быстрее

Структура проекта:
- features\hh_tests\auth_tests.feature <- Сценарии
- features\step_definitions\steps.rb <- Описания шагов
- features\support\Page_elements\elements.rb <- Константы для переиспользования в шагах

Чеклист:
1) Кейсы для проверки авторизации:
- Открытие формы
- Успешная авторизация корректным email и корректным паролем со скрытым паролем
- Успешная авторизация корректным телефоном и корректным паролем со скрытым паролем
- Неуспешная авторизация некорректным email и корректным паролем со скрытым паролем
- Неуспешная авторизация некорректным email и некорректным паролем со скрытым паролем
- Неуспешная авторизация некорректным телефоном и корректным паролем со скрытым паролем
- Неуспешная авторизация некорректным телефоном и некорректным паролем со скрытым паролем
- Кнопка "Войти" заблокирована при пустом логине и корректном пароле со скрытым паролем
- Кнопка "Войти" заблокирована при корректном email и пустом пароле со скрытым паролем
- Кнопка "Войти" заблокирована при корректном телефоне и пустом пароле со скрытым паролем
- Кнопка "Войти" заблокирована при пустом логине и пустом пароле со скрытым паролем

2) Кейсы на отображение пароля:
- Успешная авторизация корректным email и корректным паролем с отображаемым паролем
- Успешная авторизация корректным телефоном и корректным паролем с отображаемым паролем
- Неуспешная авторизация некорректным email и корректным паролем с отображаемым паролем
- Неуспешная авторизация некорректным email и некорректным паролем с отображаемым паролем
- Неуспешная авторизация некорректным телефоном и корректным паролем с отображаемым паролем
- Неуспешная авторизация некорректным телефоном и некорректным паролем с отображаемым паролем
- Кнопка "Войти" заблокирована при пустом логине и корректном пароле с отображаемым паролем
- Кнопка "Войти" заблокирована при корректном email и пустом пароле с отображаемым паролем
- Кнопка "Войти" заблокирована при корректном телефоне и пустом пароле с отображаемым паролем
- Кнопка "Войти" заблокирована при пустом логине и пустом пароле с отображаемым паролем

3) Дополнительные кейсы авторизации:
- Кнопка "Войти" неактивна при отсутствии логина и/или пароля
- Размер локатора элементом "Войти", "не помню пароль" и "Вход в партнерский кабинет"
- Неуспешная авторизация с пустыми логином и паролем при отображении пароля
- Переход на форму восстановления пароля
- Переход на форму входа в Партнёрский кабинет
- SQL injection в поле логина
- SQL injection в поле пароля
- SQL injection в поле пароля при включенном отображении
- Выполнение кода помещенного в поле логина
- Выполнение кода помещенного в поле пароля
- Выполнение кода помещенного в поле пароля при включенном отображении
- Корректное отображение верстки для разных размеров экрана

4) Список кейсов которые должны быть автоматизированы для проверки функционала входа:
- Успешная авторизация корректным email и корректным паролем со скрытым паролем
- Успешная авторизация корректным телефоном и корректным паролем со скрытым паролем
- Неуспешная авторизация некорректным email и корректным паролем со скрытым паролем
- Неуспешная авторизация некорректным email и некорректным паролем со скрытым паролем
- Неуспешная авторизация некорректным телефоном и корректным паролем со скрытым паролем
- Неуспешная авторизация некорректным телефоном и некорректным паролем со скрытым паролем
- Успешная авторизация корректным email и корректным паролем с отображаемым паролем
- Успешная авторизация корректным телефоном и корректным паролем с отображаемым паролем
- Неуспешная авторизация некорректным email и корректным паролем с отображаемым паролем
- Неуспешная авторизация некорректным email и некорректным паролем с отображаемым паролем
- Неуспешная авторизация некорректным телефоном и корректным паролем с отображаемым паролем
- Неуспешная авторизация некорректным телефоном и некорректным паролем с отображаемым паролем

- Кнопка "Войти" заблокирована при пустом логине и корректном пароле со скрытым паролем
- Кнопка "Войти" заблокирована при корректном email и пустом пароле со скрытым паролем
- Кнопка "Войти" заблокирована при корректном телефоне и пустом пароле со скрытым паролем
- Кнопка "Войти" заблокирована при пустом логине и пустом пароле со скрытым паролем
- Кнопка "Войти" заблокирована при пустом логине и корректном пароле с отображаемым паролем
- Кнопка "Войти" заблокирована при корректном email и пустом пароле с отображаемым паролем
- Кнопка "Войти" заблокирована при корректном телефоне и пустом пароле с отображаемым паролем
- Кнопка "Войти" заблокирована при пустом логине и пустом пароле с отображаемым паролем
