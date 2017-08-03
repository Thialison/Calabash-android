class Home <Calabash::ABase

# ================================= SCREEN ======================================
	
	def initialize
		@tela_inicial = "* id:'decor_content_parent'"
		@lado1 = "* id:'txtLado1'"
		@lado2 = "* id:'txtLado2'"
		@lado3 = "* id:'txtLado3'"
		@botao_calcular = "* Text:'Calcular'"
	end	
# ================================ METHODS ======================================
	
	def valida_home
		element_exists(@tela_inicial)
	end

	def preencher_lados(ladoa, ladob, ladoc)
		touch(@lado1)
		keyboard_enter_text(ladoa)

		touch(@lado2)
		keyboard_enter_text(ladob)

		touch(@lado3)
		keyboard_enter_text(ladoc)
	end

	def clicar_calcular
		touch(@botao_calcular)
	end

	def valida_mensagem(msg)
		assert_text(msg)
	end
	
end