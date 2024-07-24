Ссылка на домашнее задание - [github](https://github.com/netology-code/mnt-homeworks/tree/MNT-video/08-ansible-04-role)

## Данный проект создает и настраивает ПО на хостах Clickhouse, Vector и Lighthouse
Хосты создаются с помощью terraform в яндекс-облаке. Для изменения править файл [playbook/inventory/servers.yml](playbook/inventory/servers.yml) 

Для того чтобы запустить создание хостов необходимо внести изменения в файл переменных [variables.tf](variables.tf) 

По результату выполнения terraform манифеста создадуться файлы с внешними IP адресами хостов и SSH-логин для них в [playbook/ter_vars](playbook/ter_vars) 

**Поддерживает установку на машины Debian based Linux system x86**

### Порядок работы playbook:

[playbook/play.yml](playbook/play.yml) 

#### Vector
  - считывание переменных для авторизации на хостах
    - "ter_vars/ssh_login.yml"
    - "ter_vars/vector_ip.yml"
  - запуск роли на установку Vector из репозитория git@github.com:calm3366/vector-role.git : 1.0.0

#### Clickhouse
  - считывание переменных для авторизации на хостах
    - "ter_vars/ssh_login.yml"
    - "ter_vars/clickhouse_ip.yml"
  - запуск роли на установку Vector из репозитория git@github.com:AlexeySetevoi/ansible-clickhouse.git : 1.13
  
#### Lighthouse
  - считывание переменных для авторизации на хостах
    - "ter_vars/ssh_login.yml"
    - "ter_vars/lighthouse_ip.yml"
  - запуск роли на установку Vector из репозитория git@github.com:calm3366/lighthouse-role.git : 1.0.0
