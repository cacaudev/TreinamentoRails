module Pagamento
	SIMBOLO_MOEDA = "R$"
	
	def pagar(valor_final)
		puts "Deseja pagar com cartão de crédito? (S/N)"
		resposta = gets.chomp
		
		if (resposta == "S")
			puts "Pagando com cartão de crédito"
		else
			puts "Pagando com dinheiro"
		end		
		puts "Venda concluída com sucesso!"
	end
	
	class Pagseguro
		def initialize
			puts "Usando PagSeguro..."
		end
	end
end