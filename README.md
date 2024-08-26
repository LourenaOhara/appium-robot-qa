device
- usando genymotion
- adb serial: 127.0.0.1:6555

appium:
- 2.11.3
- instalar: npm i appium@2.11.3
- iniciar servidor: npx appium
- desligar servidor: CTRL + C no terminal
matar servidor
- sudo lsof -i :4723
- pegar o PID
- kill -9 <PID>


appium-uiautomator2-driver:
- 3.7.7
- npx appium driver install uiautomator2

[não é obrigatório] appium-doctor:
-1.16.2
- instalar: npm i appium-doctor
- realizar diagnóstico: npx appium-doctor --android

criar projeto node:
- npm init -y

instalar api do aplicativo
- colar a pasta api dentro de apps
- em apps/api rodar npm install
colocar banco de dados no ar
- logar em mongo.com
- criar novo projeto > nomear > usuario e senha 
- criar cluster
- em apps/api/.env colar a informação de uri e refatorar senha e nome do banco de dados
- npm run dev
- cola a url do ip na home do app e seleciona entrar
- as tarefas realizadas podem ser visualizadas em cluster > browse collections > collections 

appium-inspector
- instalado na raiz do notebook
- iniciar: ./Appium-Inspector-2024.6.1-linux-x86_64.AppImage





setar variáveis de ambiente JAVA_HOME e ANDROID_HOME de acordo com o SO

informações do emulador:
- adb devices

robot
- pip install --upgrade robotframework-appiumlibrary

robot run
- robot -d ./results tests/nome-do-arquivo-teste.robot
run com tags
- robot -d ./results -i [tag] tests/tasks.robot

instalar pymongo (criar arquivo resources > libs > mongo.py)
- pip install pymongo

arquivo de dependencias python
cria o arquivo requeriments na raiz do projeto
- pip freeze > requirements.txt