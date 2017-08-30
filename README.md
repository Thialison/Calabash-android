# Calabash-android
Test Automation with an android environment and cucumber report/profile/background


### Instalando Ambiente Ruby no MAC

```ruby
a. Instalar o Homebrew:
   ruby -e “$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)”
   
b. Instalar JDK para o Mac:
   http://www.oracle.com/technetwork/java/javase/downloads/index.html

c. Instalando e configurando o rbenv:
   brew install rbenv
   echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
   rbenv install -l
   rbenv install 2.3.1
   rbenv local 2.3.1

d. Instalar Android Studio:
   https://developer.android.com/studio/index.html?hl=pt-br

e. Personalizar terminal MacOS:
   Link no github => https://github.com/robbyrussell/oh-my-zsh
   Basic Installation via curl => sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"


NOTE: Consultar o arquivo [CONFIGURANDO_AMBIENTE.pdf] para maiores informações
```

### Instalando Gems do Ruby

```ruby
gem install bundler
gem install calabash-android
```

### Váriaveis de Ambiente do Android

```ruby
Abrir arquivo de configuração
open ~/.bash_profile

export ANDROID_HOME=/Users/<usuario>/Library/Android/sdk
export PATH=$ANDROID_HOME/tools/bin:$PATH
export PATH=$ANDROID_HOME/tools:$PATH
export PATH=$ANDROID_HOME/platform-tools:$PATH
export PATH=$ANDROID_HOME/platform-tools/adb:$PATH
export PATH=$ANDROID_HOME/emulator/:$PATH

NOTE: Trocar o <usuario> pelo nome do seu usuário
```


### Executando o Projeto :dart:

```ruby
1. Faça um clone do projeto:
   git clone https://github.com/Thialison/Calabash-android.git

2. Emulando android virtual device: 
   emulator @"<Nome do seu emulator>"&

3. Executando feature calculo de triangulo: 
   calabash-android run TrianguloApp.apk features/spec/calculo_triangulo.feature
   
4. Executando feature com report: 
   calabash-android run TrianguloApp.apk features/spec/calculo_triangulo.feature -p report
```
