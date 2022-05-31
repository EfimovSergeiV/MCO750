# MCO750 UI
## Пользовательский интерфейс

```bash
# Скопировать иконку интерфейса
sudo cp mco.desktop /usr/share/applications/mco.desktop

# Выставить приложение в автозагрузку при помощи гном твик тулл
gnome-tweak-tool
```

## Установка зависимостей

```bash
sudo apt install python3-pip
pip3 install pyserial pyside2
```

## Назначение страниц

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