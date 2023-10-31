### Данный проект предоставляет возможность установки 3 продуктов на хосты: Java JDK, Elasticsearch и Vector


#### Java JDK:
  - определяет переменную java_home   
  - загружает архив дистрибутива из локального размещения в /tmp хостов
  - создает домашнюю директорию на хостах
  - разархивирует архив в директорию
  - добавляет переменную окружения для Java JDK

#### Elasticsearch:
  - загружает архив дистрибутива из локального размещения в /tmp хостов
  - создает домашнюю директорию на хостах
  - разархивирует архив в директорию
  - добавляет переменную окружения для Elasticsearch

#### Vector
  - загружает дистрибутив из удаленного репозитория
  - создает домашнюю директорию на хостах
  - разархивирует архив в директорию
  - добавляет переменную окружения для Vector
  - создает директорию для шаблонов /templates
  - копирует в него файл templates/template_vector.j2


 
**Поддерживает установку на машины linux-x86**


#### Версии установленных дистрибутивов:
  - java_jdk_version: 11.0.11
  - vector_version: 0.33.0
  - elastic_version: 7.10.1

#### Дистрибутивы    
 - java_jdk и elastic должны лежать в локальной директории ~/Downloads
 - vector загружается с https://packages.timber.io/vector/

#### Чтобы изменить требуемые версии и путь до локального хранилища файлов перейдите в файлы с переменными:
[playbook/group_vars/all/vars.yml](playbook/group_vars/all/vars.yml) 
  - java_jdk_version - версия Java JDK
  - java_oracle_jdk_package - путь до файла jdk-X.X.X_linux-x64_bin.tar.gz
  - vector_version - версия Vector
  - vector_home - директория размещения Vector на хосте

[playbook/group_vars/elasticsearch/vars.yml](playbook/group_vars/elasticsearch/vars.yml) 
  - elastic_version - версия Elasticsearch
  - elastic_home - директория размещения Elasticsearch на хосте
  - elastic_jdk_package - путь до файла elasticsearch-X.X.X-linux-x86_64.tar.gz

**Проект предусматривает установку продуктов в контейнерах docker.**

Если есть потребность использовать проект в других средах, необходимо отредактирвоать файл

[playbook/inventory/prod.yml](playbook/inventory/prod.yml) 

**В проекте устанавливаются переменные окружения на хосты с помощью шаблонов ".j2":**
  - [playbook/templates/jdk.sh.j2](playbook/templates/jdk.sh.j2)
  - [playbook/templates/elk.sh.j2](playbook/templates/elk.sh.j2)
  - [playbook/templates/vector.sh.j2](playbook/templates/vector.sh.j2)

Также присутсвует шаблон [playbook/templates/template_vector.j2](playbook/templates/template_vector.j2) для дальнейшего заполнения конфигурирации Vector.


