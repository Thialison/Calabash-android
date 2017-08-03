Quando(/^eu preencher o campo 1 "([^"]*)"$/) do |lado1|

	touch("* id:'txtLado1'")
	keyboard_enter_text(lado1)

end

Quando(/^eu preencher o campo 2 "([^"]*)"$/) do |lado2|
  
	touch("* id:'txtLado2'")
	keyboard_enter_text(lado2)

end

Quando(/^eu preencher o campo 3 "([^"]*)"$/) do |lado3|

	touch("* id:'txtLado3'")
	keyboard_enter_text(lado3)
  
end

Então(/^o texto "([^"]*)" sera exibida$/) do |msg|

	assert_text(msg)
  
end