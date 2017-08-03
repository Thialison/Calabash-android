#language: pt
#coding: utf-8


Funcionalidade: Calculo de triângulo

   Contexto: Usuario esta na home do App
   Dado que estou na tela do App

   @equilatero
   Cenário: Calculando um triângulo equilátero
      
      Quando eu preencher o Lado 1 com "3", lado 2 com "3" e lado 3 com "3"
      E eu clicar em Calcular
      Então a mensagem "O triângulo é Equilátero" será exibida


   @escaleno
   Cenário: Calculando um triângulo escaleno
      
      Quando eu preencher o Lado 1 com "3", lado 2 com "11" e lado 3 com "23"
        E eu clicar em Calcular
      Então a mensagem "O triângulo é Escaleno" será exibida


   @isosceles
   Cenário: Calculando um triângulo isósceles
      
      Quando eu preencher o Lado 1 com "3", lado 2 com "3" e lado 3 com "23"
        E eu clicar em Calcular
      Então a mensagem "O triângulo é Isósceles" será exibida

    @negativo
    Cenário: Calculando sem preenchimento de todos os campos
    	
    	Quando eu preencher o Lado 1 com "3", lado 2 com "11" e lado 3 com ""
      	 E eu clicar em Calcular
        Então a mensagem "Preencha todos os campos" será exibida 











