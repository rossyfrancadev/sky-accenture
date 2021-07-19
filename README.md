
# SKY-robotframework

[Site Sky](https://www.sky.com.br/)

### Configurações

-Instalar o [Python](https://www.python.org/downloads/)

-O chrome driver deve ser alocado na pasta do python:
> (C:\Users\Seu Usuario\AppData\Local\Programs)\Python\Python39\Scripts\

### instalar dependências
> pip install -r requirements.txt
### Rodar todos os testes
>  robot -d results  ./src/ui/
### Rodar pelo titulo do teste
>  robot -d results --loglevel TRACE -t "Cenario 02: Realizar login na aplicação" ./src/mobile/tests/
### Rodar pela tag
>  robot -d results --loglevel TRACE -i Login  ./src/mobile/tests/

### Bibliotecas

[RobotFramework](https://robotframework.org/)
[Selenium Library](https://github.com/robotframework/SeleniumLibrary/)
