class Criptomoneda < ApplicationRecord
	validates :token_criptomoneda, presence: true
	validates :nombre, presence: true
    validates_uniqueness_of :token_criptomoneda
	validates_uniqueness_of :nombre
	validates_numericality_of :valor_actual, :greater_than => 0
	self.primary_key = 'token_criptomoneda'
end
