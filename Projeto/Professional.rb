class Professional
	attr_accessor  :numero

	def initialize (nome, num, espec, reg, cv)
		@nome = nome
		@numero = num
		@especialidade = espec
		@regiao = reg
		@cartaoVisita = cv
	end

	def validateNew()
		if (@especialidade.empty? || @regiao.empty? || @cartaoVisita.empty?)
			self.deleteProfessional
			
			puts "Profissional #{@nome} criado com sucesso"
		end
	end
	
	def deleteProfessional()
		@nome =""
		@numero = ""
		@especialidade = ""
		@regiao = ""
		@cartaoVisita = ""
		puts "Profissional inexistente"
	end
	
	def list ()
		puts "#{@nome}, #{@numero}, #{@especialidade}, #{@regiao}, #{@cartaoVisita}"
	end	

	def pesquisaPorNome (var)
		if (@nome == var)
			puts "#{@nome}, #{@numero}, #{@especialidade}, #{@regiao}, #{@cartaoVisita}"
			return true			
		end		
	end
	
end

	gab = Professional.new("gab", "81991932770", "Cientista da Computação", "Recife",  "img2")
	gab.validateNew
	carol =  Professional.new("Carol", "912312313", "Designer", "Recife", "img4")
	carol.validateNew
	arr = Array.new
	arr << carol
	arr << gab
	
	# em fase de construção
	var = "Start"
	while (var != "Bye\n")

		puts "\n\nSe quiser ver sua lista de cartões, escreva: liste todos \nSe quiser adicionar algum cartao, escreva: adicionar nome numero de celular especialidade regiao imagem do Cartão \nSe quiser pesquisar por alguém, escreva: pesquisa por nome 'nome'\nSe quiser deletar alguém, escreva: delete 'nome da imagem do cartão'\n\n\n"
		var = gets
		
		if (var.eql?"liste todos\n")
			i = 0
			while i < arr.size()
				arr[i].list
				i=i+1
			end
			
			
		elsif (var[0..8] == "adicionar")
			values = var.split(" ")
			arr << Professional.new(values[1], values[2], values[3], values[4], values[5])
	
		elsif (var[0..7] == "pesquisa")
			missing = true
			values = var.split(" ")
			while ((i < arr.size()) && missing)
				missing = values[1].pesquisaPorNome
				i=i+1
			end
			
			if (missing == true)
				puts "Profissional não encontrado"
			end
			
		else 
			puts "Essa não é uma opção válida. Verifique a ortografia e tente novamente.\n\n\n\n"	
		
		end
	end
	puts "Até mais"
	

