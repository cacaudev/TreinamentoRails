require_relative "frete"
require_relative "pagamento"

class Venda
	include Frete
	include Pagamento
	
	TABELA_PRODUTOS = {"pc" => 1200.0, "ruby" => 450.0, "nodejs" => 430.0}
	
	def imprimir_tabela_produtos
		puts "----- Tabela de produtos -----"
		TABELA_PRODUTOS.each do |k,v|
			puts " #{k} - #{v} "
		end
		puts "------------------------------"
	end
	
	def vender
		puts "------- Bem-vindo à loja da Cacau! -------"
		
		imprimir_tabela_produtos
		puts "Digite o nome do produto que deseja comprar:"
		produto_escolhido = gets.chomp
		puts "------------------------------------------"
		
		imprimir_tabela_frete
		puts "Digite a sigla do estado que deseja enviar o produto:"
		estado_escolhido = gets.chomp
		puts "------------------------------------------"
		
		puts "Calculando valor..."
		valor_final = calcular_valor_final(TABELA_PRODUTOS[produto_escolhido], estado_escolhido)
		puts "Valor a pagar mais frete: #{Pagamento::SIMBOLO_MOEDA}#{valor_final} "
		puts "------------------------------------------"
		
		puts "Deseja pagar? (Y/N)"
		resposta_pagamento = gets.chomp
		
		if (resposta_pagamento == "Y")
			Pagamento::Pagseguro.new
			pagar(valor_final)			
		else
			puts "OK. Volte sempre!"			
		end
	end
end