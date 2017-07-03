# Calabash-android
Test Automation with an android environment and cucumber report/profile/background


### Instalação Ambiente MAC

```ruby
a. Instalar o Homebrew:
-  ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
   
b. Instalar JDK para o Mac.

c. Instalar rbenv:
-  brew install rbenv
   
d. Inclua no bash_profile:
-  echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   
e. Listar as versões disponíveis:
-  rbenv install -l
   
f. Instalar uma versão:
-  rbenv install 2.3.1
   
g. Ativar rbenv:
-  rbenv local 2.3.1

h. Instalar Android Studio
-  Criar e configurar um Android emulator
```

### Instalando Gems do Ruby

```ruby
gem install bundler
gem install calabash-android
```

### Váriaveis de ambiente do Android

```ruby
export ANDROID_HOME=/Users/<usuario>/Library/Android/sdk
export ANDROID_PLATAFORM_TOOLS=/Users/<usuario>/Library/Android/sdk/platform-tools
export ANDROID_TOOLS=/Users/<usuario>/Library/Android/sdk/tools
export ANDROID_ADB=/Users/<usuario>/Library/Android/sdk/platform-tools/adb

NOTE: Trocar o <usuario> pelo nome do seu usuário
```


### Executando o projeto

```
0. Faça um clone do projeto:
   git clone 
   
1. Abrindo o Emulator do android no terminal:
   cd $ANDROID_HOME/emulator

2. Emulando android virtual device: 
   emulator -avd "<Nome do seu emulator>"&

3. Executando feature no emulator: 
   calabash-android run TrianguloApp.apk feature/spec/calculo_triangulo.feature


