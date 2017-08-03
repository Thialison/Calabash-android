Dado(/^que estou na tela do App$/) do

	@home = Home.new

	fail "Aplicativo nao foi aberto" unless @home.valida_home

end

Quando(/^eu preencher o Lado 1 com "([^"]*)", lado 2 com "([^"]*)" e lado 3 com "([^"]*)"$/) do |lado1, lado2, lado3|

	@home.preencher_lados(lado1, lado2, lado3)

end

Quando(/^eu clicar em Calcular$/) do
  
	@home.clicar_calcular
	
end

Então(/^a mensagem "([^"]*)" será exibida$/) do |msg|

	@home.valida_mensagem(msg)

end