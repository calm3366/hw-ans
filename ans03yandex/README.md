Ссылка на домашнее задание - [github](https://github.com/netology-code/mnt-homeworks/tree/MNT-video/08-ansible-03-yandex)

## Данный проект создает и настраивает ПО на хостах Clickhouse, Vector и Lighthouse
Хосты создаются с помощью terraform в яндекс-облаке. Для изменения править файл [playbook/inventory/servers.yml](playbook/inventory/servers.yml) 

Для того чтобы запустить создание хостов необходимо внести изменения в файл переменных [variables.tf](variables.tf) 

По результату выполнения terraform манифеста создадуться файлы с внешними IP адресами хостов и SSH-логин для них в [playbook/group_vars](playbook/group_vars) 

**Поддерживает установку на машины Debian based Linux system x86**

### Порядок работы playbook:

  - считывание переменных для авторизации на хостах
    - "group_vars/all/ssh_login.yml"
    - "group_vars/clickhouse/clickhouse_ip.yml"
    - "group_vars/lighthouse/lighthouse_ip.yml"
    - "group_vars/vector/vector_ip.yml"


#### Vector
  - загружает дистрибутив из удаленного репозитория
  - создает домашнюю директорию на хостах
  - разархивирует архив в директорию "{{ vector_home }}/vector"
  - добавляет переменную окружения для Vector из файла templates/vector.sh.j2
  - создает директорию для конфигурации "/etc/vector"
  - создает директорию "/var/lib/vector"
  - копирует шаблон templates/vector.yaml в "/etc/vector/vector.yaml"
    - перезагружает службу при изменении шаблона
  - копирует шаблон templates/vector.service.j2 в "/etc/systemd/system/vector.service"
  - стартует службу vector.service

#### Clickhouse
  - устанавливает зависимые пакеты
    - apt-transport-https
    - ca-certificates
    - dirmngr
  - добавляет репозиторий и apt ключ для установки
  - устанавливает пакеты:
    - clickhouse-common-static
    - clickhouse-server
    - clickhouse-client
  - создает БД
  - запускает службу clickhouse-server
  
#### Lighthouse
  - устангавливает пакет unzip
  - извлекает zip архив из git репозитория в /opt
  - устанавливает nginx
  - создает файл конфигурации веб-сервера из шаблон templates/index.thml.j2 в /etc/nginx/sites-available/default
    - при изменении шаблона перезапускает службу nginx
  - запускает службу nginx




#### Версии установленных дистрибутивов:
  - vector_version: 0.33.0 - задается в [playbook/group_vars/vector/vector.yml](playbook/group_vars/vector/vector.yml) 

#### Для запуска плейбука для установки определенного ПО используются теги:
  - clickhouse
  - vector
  - lighthouse

#### Дистрибутивы:   
  - vector загружается с https://packages.timber.io/vector/
  - clickhouse загружается с репозитория https://packages.clickhouse.com/deb
  - lighthouse с git репозитория https://github.com/VKCOM/lighthouse.git

## Основная часть
1. [playbook/play.yml](playbook/play.yml) 
4. [playbook/inventory/servers.yml](playbook/inventory/servers.yml) 
5. ![!\[Alt text\](<img/!\[Alt text\](<img/Снимок экрана 2023-11-04 в 12.31.24.png>)>)](<img/Снимок экрана 2023-11-04 в 12.31.24.png>)


![!\[Alt text\](<img/!\[Alt text\](<img/Снимок экрана 2023-11-04 в 14.43.45.png>)>)](<img/Снимок экрана 2023-11-04 в 14.43.45.png>)

6. ![!\[Alt text\](<img/!\[Alt text\](<img/Снимок экрана 2023-11-04 в 13.39.05.png>)>)](<img/Снимок экрана 2023-11-04 в 13.39.05.png>)


8. ![!\[Alt text\](<img/!\[Alt text\](<img/Снимок экрана 2023-11-04 в 13.40.23.png>)>)](<img/Снимок экрана 2023-11-04 в 13.40.23.png>)
