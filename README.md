<h1 align="center">About</h1>

# Run project
```sh
flutter run lib/main.dart
```

<br />

# Run sorting imports
```sh
flutter pub run import_sorter:main
```

<br />

# Generate files
#### `Json_serializable`-models
```sh
flutter packages pub run build_runner build --delete-conflicting-outputs
```

<br />

# Модуль 9. Работа с сетью и навигацией

#### Задание
1. Выберите библиотеку для работы с запросами (DIO или HTTP).

2. Получите список отелей методом get по адресу `https://run.mocky.io/v3/ac888dc5-d193-4700-b12c-abb43e289301` и отобразите на экране. В качестве ответа на запрос вернется json-строка.

3. При загрузке отобразите прелоадер. Карточки с отелями могут отображаться в виде списка и плитки. Для переключения вида в AppBar есть две иконки (список и плитка).

4. При клике на кнопку «Подробнее» настройте переход на страницу с детальной информацией об отеле (`https://run.mocky.io/v3/${uuid}`). На ней должен присутствовать slider carousel и поля: страна, город, улица, рейтинг, сервисы (платные и бесплатные). Изображения, имена которых приходят с сервера, находятся в папке assets/images.

5. Создавайте классы и используйте json_serializable для работы с отелями и вложенными данными отелей.

6. Обработайте ошибки сервера: если информация об отеле недоступна, возвращайте код ошибки 404 и message. Сообщение с ошибкой отобразите на экране.
