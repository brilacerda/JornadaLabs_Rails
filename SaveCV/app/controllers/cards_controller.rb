class CardsController < ApplicationController

	def index
		@cards = Card.all
	end 

	def new 
		@card = Card.new
	end 

	def create 
		@card = Card.new(card_params)

		if @card.save
			flash[:notice] = "Cartão cadastrado com sucesso" 
			redirect_to @card
		else 
			@card.errors.messages
			render action: :new
		end
	end 

	def edit
		@card = Card.find(params[:id])
	end

	def update
		@card = Card.find(params[:id])

		if @card.update(card_params)
			redirect_to @card
		else 
			render 'edit'
		end		
	end

	def show 
		@card = Card.find(params[:id]) 
	end 

	def destroy
		@card = Card.find(params[:id])
		@card.destroy

		redirect_to cards_path
	end

	private
	def card_params
		params.require(:card).permit(:nome,:numero,:especialidade,:regiao,:cartaodevisita)
	end

end
