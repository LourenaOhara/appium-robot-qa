# APPIUM-ROBOT-QA [![My Skills](https://skillicons.dev/icons?i=py,nodejs,npm,vscode,mongdb)](https://skillicons.dev)

<p align="center">
  <img src="images/arp.png" alt="animated" />
</p>

***Material disponibilizado pelo QAx - Fernando Papito no curso*** [Robot Framework e Appium para Android e iOS
](https://www.udemy.com/course/robot-framework-e-appium-para-android-e-ios)

## 💻 Pré requisitos
- 🎯 Ubuntu 22.04 [LTS]
- 🎯 VS Code
  
### 🛠️ Device
- [Genymotion](https://www.genymotion.com/product-desktop/download/)
- criar novo device
- copiar adb serial do device

### 🛠️ Node e npm
- Instalar nodejs e npm
- [Download](https://nodejs.org/en/download/package-manager/current)
  
### 🛠️ Appium:
- [Comando de instalação](https://www.npmjs.com/package/appium)
```
npm i appium
```
- **iniciar servidor**: ```npx appium```
- **desligar servidor**: CTRL + C no terminal<br>

**<p> 💾 Matar servidor appium</p>**
```sudo lsof -i :4723```
- pegar o PID
```kill -9 <PID>```

**<p> 🔧 appium-uiautomator2-driver</p>**
```
npx appium driver install uiautomator2
```
**<p> 🔧 appium-doctor</p>**
```
npm i appium-doctor
```
- realizar diagnóstico:
```npx appium-doctor --android```

**<p> 🔧 criar projeto node</p>**
- na raiz do projeto:
```
npm init -y
```
### 🛠️ instalar api do aplicativo
- colar a pasta api dentro de apps
- em apps/api rodar: ```npm install```
**<p> 💾 colocar banco de dados no ar</p>**
- logar em [mongo.com](https://www.mongodb.com/)
- criar novo projeto > nomear > usuario e senha 
- criar cluster
**<p> 🔧 em apps/api/.env colar a informação de uri e refatorar senha e nome do banco de dados</p>**
```
npm run dev
```
- cola a url do ip na home do app e seleciona entrar
- as tarefas realizadas podem ser visualizadas em cluster > browse collections > collections 

**<p> 🔧 appium-inspector</p>**
[Instalado na raiz do notebook](https://github.com/appium/appium-inspector/releases)
- iniciar: ```./Appium-Inspector-2024.6.1-linux-x86_64.AppImage```

🚀 setar variáveis de ambiente JAVA_HOME e ANDROID_HOME de acordo com o SO

### 🛠️ Robot Framework
```
pip install --upgrade robotframework-appiumlibrary
```
**<p> 🔧 robot run</p>**
```robot -d ./results tests/nome-do-arquivo-teste.robot```
**<p> 🔧 run com tags</p>**
```robot -d ./results -i [tag] tests/tasks.robot```

### 🛠️ Instalar pymongo (criar arquivo resources > libs > mongo.py)
```
pip install pymongo
```
### 🚀 Arquivo de dependencias python
cria o arquivo requeriments na raiz do projeto:
```pip freeze > requirements.txt```
