module Frete
	TABELA_FRETE = {"MG" => 1.90, "BA" => 2.40, "SP" => 3.50, "RJ" => 1.50}
	
	def imprimir_tabela_frete
		puts "----- Tabela de Fretes -----"
		TABELA_FRETE.each do |k,v|
			puts " #{k} - #{v} "
		end
		puts "----------------------------"
	end
	
	def calcular_valor_final(valor_produto, uf)
		return valor_produto + TABELA_FRETE[uf]
	end	
end