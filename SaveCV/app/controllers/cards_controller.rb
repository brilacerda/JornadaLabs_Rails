class CardsController < ApplicationController

	def index
		@cards = Card.all
	end 

	def new 
		@card = Card.new
	end 

	def create 
		@card = Card.new(card_params)

		@card.save
		redirect_to @card
	end 

	def edit
		@card = Card.find(params[:id])
	end

	def update
		@card = Card.find(params[:id])

		if @card.update(book_params)
			redirect_to @card
		else 
			render 'edit'
		end		
	end

	def show 
		@card = Card.find(params[:id])
	end 

	def destroy 
	end

	private
	def card_params
		params.require(:card).permit(:nome,:numero,:especialidade,:regiao,:cartaodevisita)
	end

end
