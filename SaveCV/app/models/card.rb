class Card < ActiveRecord::Base
	validates :especialidade, :cartaodevisita, presence: true
	validates :numero, uniqueness: true

	belongs_to :user
end
