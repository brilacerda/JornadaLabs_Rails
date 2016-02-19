class ReviewsController < ApplicationController

	def create
		@card = Card.find(params[:card_id])
		@review  = @card.reviews.create(review_params)

		@review.save

		redirect_to book_path(@book)
	end

	private
	def review_params
		params.require(:review).permit(:rate, :comment)		
	end
end
