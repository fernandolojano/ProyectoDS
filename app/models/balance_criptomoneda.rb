class BalanceCriptomoneda < ApplicationRecord
	validates :token_criptomoneda, presence: true
	validates :usuario_id, presence: true
	validates_numericality_of :valor, :greater_than_or_equal_to => 0
end
