#language: pt
#coding: utf-8

Funcionalidade: Calculo de triângulo

Esquema do Cenário: Calcular tipo de triângulo
	Dado que estou na tela do App
      Quando eu preencher o campo 1 com "<lado1>"
      Quando eu preencher o campo 2 com "<lado2>"
      Quando eu preencher o campo 3 com "<lado3>"
        E eu clicar em Calcular
      Então o texto <msg> sera exibida

Exemplos:
	|lado1	|lado2	|lado3	|msg|
	|	3	|	4	|	5	|"O triângulo é Escaleno"|
	|	3	|	3	|	3	|"O triângulo é Equilátero"|
	|	12	|	12	|	56	|"O triângulo é Isósceles"|
	|	3	|	4	|		|"Preencha todos os campos"|