# Calabash-android
Test Automation with an android environment and cucumber report/profile/background


### Instalação Ambiente MAC

```ruby
a. Instalar o Homebrew:
   ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
   
b. Instalar JDK para o Mac:
   http://www.oracle.com/technetwork/java/javase/downloads/index.html

c. Instalar rbenv:
   brew install rbenv
   
d. Inclua no bash_profile:
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   ```
   ```ruby
e. Instalando rbenv configurando:
   rbenv install -l
   rbenv install 2.3.1
   rbenv local 2.3.1

h. Instalar Android Studio
   https://developer.android.com/studio/index.html?hl=pt-br
      
NOTE: Consultar [CONFIGURANDO_AMBIENTE.pdf] para maiores informações
```

### Instalando Gems do Ruby

```ruby
gem install bundler
gem install calabash-android
```

### Váriaveis de ambiente do Android

```ruby
Abrir arquivo de configuração
open ~/.bash_profile

export ANDROID_HOME=/Users/<usuario>/Library/Android/sdk
export ANDROID_PLATAFORM_TOOLS=/Users/<usuario>/Library/Android/sdk/platform-tools
export ANDROID_TOOLS=/Users/<usuario>/Library/Android/sdk/tools
export ANDROID_ADB=/Users/<usuario>/Library/Android/sdk/platform-tools/adb

NOTE: Trocar o <usuario> pelo nome do seu usuário
```


### Executando o projeto :dart:

```ruby
0. Faça um clone do projeto:
   git clone https://github.com/Thialison/Calabash-android.git
   
1. Abrindo o Emulator do android no terminal:
   cd $ANDROID_HOME/emulator

2. Emulando android virtual device: 
   emulator -avd "<Nome do seu emulator>"&

3. Executando feature calculo de triangulo: 
   calabash-android run TrianguloApp.apk features/spec/calculo_triangulo.feature
   
4. Executando feature com report: 
   calabash-android run TrianguloApp.apk features/spec/calculo_triangulo.feature -p report
   ```
