class Card < ActiveRecord::Base
	
	validates :especialidade, presence: {message: 'Para facilitar as pesquisas, digite a especialidade do profissional'}
	validates :cartaodevisita, presence: {message: 'Não pode ser vazio'}
	validates :numero, uniqueness: true

	has_many :reviews

end
