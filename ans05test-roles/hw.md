## Основная часть
### molecule
[roles/clickhouse](playbook/roles/clickhouse) 

1. Ошибка - не пойму что нужно исправить


![!\[Alt text\](<img/!\[Alt text\](<img/ошибка 1.png>)>)](<img/ошибка 1.png>)

[roles/vector](playbook/roles/vector) 

3. 
![!\[Alt text\](<img/!\[Alt text\](<img/3.1.png>)>)](<img/3.3.png>)

![!\[Alt text\](<img/!\[Alt text\](<img/3.1.png>)>)](<img/3.2.png>)

![!\[Alt text\](<img/!\[Alt text\](<img/3.1.png>)>)](<img/3.1.png>)

5. 
[verify.yml](playbook/roles/vector/molecule/default/verify.yml) 

![!\[Alt text\](<img/!\[Alt text\](<img/4.png>)>)](<img/4.png>)



### tox
[vector/molecule/tox](playbook/roles/vector/molecule/tox/) 

3. 
![!\[Alt text\](<img/!\[Alt text\](<img/tox3.png>)>)](<img/tox3.png>)

4. 
![!\[Alt text\](<img/!\[Alt text\](<img/tox4.png>)>)](<img/tox4.png>)

[tox.ini](playbook/roles/vector/tox.ini) 

6. Ошибка (ansible был переустановлен через pip3)

![!\[Alt text\](<img/!\[Alt text\](<img/tox 6.png>)>)](<img/tox 6.png>)




Если выполнить
```
pip install -r tox-requirements
```
то происходит следующее:
![!\[Alt text\](<img/!\[Alt text\](<img/pip install -r tox-requirements.png>)>)](<img/pip install -r tox-requirements.png>)


![!\[Alt text\](<img/!\[Alt text\](<img/pip.png>)>)](<img/pip.png>)


