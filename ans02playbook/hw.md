## Основная часть
1. [playbook/inventory/prod.yml](playbook/inventory/prod.yml) 

2. [playbook/site.yml](playbook/site.yml) 

5. ![!\[Alt text\](<img/!\[Alt text\](<img/Снимок экрана 2023-10-28 в 21.08.27.png>)>)](<img/Снимок экрана 2023-10-28 в 21.08.27.png>)


![!\[Alt text\](<img/!\[Alt text\](<img/Снимок экрана 2023-10-28 в 22.24.01.png>)>)](<img/Снимок экрана 2023-10-28 в 22.24.01.png>)


7. ![!\[Alt text\](<img/!\[Alt text\](<img/Снимок экрана 2023-10-28 в 21.46.15.png>)>)](<img/Снимок экрана 2023-10-28 в 21.46.15.png>)


8. ![!\[Alt text\](<img/!\[Alt text\](<img/Снимок экрана 2023-10-28 в 21.46.58.png>)>)](<img/Снимок экрана 2023-10-28 в 21.46.58.png>)


Единственное не понял, при подключении на машину в переменную $PATH не добавлены изменения и тот же vector --version не отрабатывает
В чем может быть косяк? Используется docker + ubuntu:18.04

вот например содержимое  [playbook/templates/jdk.sh.j2](playbook/templates/jdk.sh.j2) 
```
#!/usr/bin/env bash

export JAVA_HOME={{ java_home }}
export PATH=$PATH:$JAVA_HOME/bin
```

![!\[Alt text\](<img/!\[Alt text\](<img/Снимок экрана 2023-10-28 в 22.47.54.png>)>)](<img/Снимок экрана 2023-10-28 в 22.47.54.png>)