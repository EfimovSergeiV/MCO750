# MCO750 UI
# Пользовательский интерфейс


## Настройка автозапуска
```bash
# Скопировать ярлык интерфейса в Gnome
sudo cp mco.desktop /usr/share/applications/mco.desktop

# Выставить приложение в автозагрузку при помощи гном твик тулл
gnome-tweak-tool
```

## Установка зависимостей

```bash
# Python --version >3.10

sudo apt install python3-pip
pip3 install pyserial pyside2

# Python-PostgreSQL Database Adapter
[-] pip install psycopg2
[+] pip install psycopg2-binary
```

## Подготовка базы данных
```bash
# Установка PostgreSQL
sudo sh -c 'echo "deb http://apt.postgresql.org/pub/repos/apt $(lsb_release -cs)-pgdg main" > /etc/apt/sources.list.d/pgdg.list'
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update
sudo apt-get -y install postgresql

# Создание базы данных PostgreSQL
sudo -u postgres psql

create database mco_db;
create user mco_user with password 'your-password';

alter role mco_user set client_encoding to 'utf-8';
alter role mco_user set default_transaction_isolation to 'read committed';
alter role mco_user set timezone to 'UTC';

grant all privileges on database mco_db to mco_user;
\q

# Восстановление структуры (данных) из дампа
sudo -u postgres psql -d newdatabase -f db.sql

# Создание дампа базы данных
sudo -u postgres pg_dump database > db.sql
```


## Web сервер Django


## Логика проекта .py

```text
./MCO750/

main.py         - файл запуска программы с помощью интерпретатора Python3
```


## Карта страниц QML (Qt)

```text
./source/pages/

[+] Страницы настроек сварочных программ
conf.qml    - Выбор программы для (созд, редакт, удал)
conf-0.qml  - Редактирование оплавления, выбранной программы
conf-1.qml  - Редактирование корректора, выбранной программы
conf-2.qml  - Редактирование параметров цикла сварки, выбранной программы
conf-3.qml  - Редактирование подогрева и выжигания , выбранной программы

[+] Прочие страницы
index.qml       - Главная страница интерфейса
action.qml      - Страница визуализации работы
settings.qml    - Страница настроек UI

./source/controls/  - директория контроллеров управления UI
./source/sensors/   - директория виджетов сенсоров управления UI
./about/            - дополнительная информация
```