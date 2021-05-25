class BalanceDivisa < ApplicationRecord
	validates :token_divisa, presence: true
	validates :usuario_id, presence: true
	validates_numericality_of :valor, :greater_than => 0

end
