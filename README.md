# DWH_Seperset

Проектирование и реализация Data Warehouse Defined и его последующая интеграция с BI инструментом Superset в рамках курса "Инженер данных".

В рамках данного проекта спроектирован DWH по продажам магазина одежды, созданы скрипты для создания таблиц и их наполнения с учётом слоёв Raw, Core, Mart. Логическая структура DWH представлена на ER-диаграмме по ссылке: <code>[./ER-diagram.png](https://github.com/AlexeyAnanchenko/DWH_Seperset/blob/main/ER-diagram.png)</code>.

Далее реализована интеграция БД с BI Superset и построен информативный Dashboard по данным со слоя Mart. Скрин по ссылке: <code>[./ER-diagram.png](https://github.com/AlexeyAnanchenko/DWH_Seperset/blob/main/my_dashboard_example.png)</code>.

Для возможности локально развернуть проект обновлён docker-compose от Superset, в который добавлен контейнер с реализованным  DWH.

## Как развернуть проект?

Для работы с проектом необходимо иметь установленным Docker.

1. Скачиваем данный репозиторий:

```sh
git clone git@github.com:AlexeyAnanchenko/DWH_Seperset.git
```

2. Переходим в папку:

```sh
cd ./DWH_Seperset
```

3. Скачиваем Superset:

```sh
git clone https://github.com/apache/superset.git
```

4. Переходим в папку Superset:

```sh
cd superset
```

5. Добавляем последние изменения:

```sh
docker-compose -f docker-compose-non-dev.yml pull
```

6. Добавляем данные с моего репозитория в Superset:

```sh
cp -r ./../postgres_data ./postgres_data
```

```sh
cp -f ./../docker-compose-non-dev.yml ./docker-compose-non-dev.yml
```

7. Запускаем docker-compose:

```sh
docker-compose -f docker-compose-non-dev.yml up -d
```


Далее БД доступна в контейнере, либо по порту 5434 из любого сервиса для подключения к БД (например, DBeaver).
Superset доступен по ссылке http://localhost:8088/
