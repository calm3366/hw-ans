Ссылка на домашнее задание - [github](https://github.com/netology-code/mnt-homeworks/tree/MNT-video/08-ansible-05-testing)

## Основная часть
### molecule
[roles/clickhouse](playbook/roles/clickhouse) 

1. 


![!\[Alt text\](<img/!\[Alt text\](<img/1.png>)>)](<img/1.png>)

[roles/vector](playbook/roles/vector) 

3. 
![!\[Alt text\](<img/!\[Alt text\](<img/3.1.png>)>)](<img/3.3.png>)

![!\[Alt text\](<img/!\[Alt text\](<img/3.1.png>)>)](<img/3.2.png>)

![!\[Alt text\](<img/!\[Alt text\](<img/3.1.png>)>)](<img/3.1.png>)

5. 
[verify.yml](playbook/roles/vector/molecule/default/verify.yml) 

![!\[Alt text\](<img/!\[Alt text\](<img/4.png>)>)](<img/4.png>)



### tox
[vector/molecule](playbook/roles/vector/molecule/default/) 

[tox.ini](playbook/roles/vector/tox.ini) 

3. 
![!\[Alt text\](<img/!\[Alt text\](<img/tox33.png>)>)](<img/tox33.png>)

6. tox в контейнере после изменений molecule driver на podman:


тест молекулы проходит

![!\[Alt text\](<img/!\[Alt text\](<img/000.png>)>)](<img/000.png>)


но токс отваливается:

![!\[Alt text\](<img/!\[Alt text\](<img/001.png>)>)](<img/001.png>)

пробовал ставить ansible==4.3 ansible-core==2.11.12 как в вебинаре разбирал Алексей

также пробовал ansible==5.0.1 ansible-core==2.12.0

![!\[Alt text\](<img/!\[Alt text\](<img/002.png>)>)](<img/002.png>)


ошибка та же

