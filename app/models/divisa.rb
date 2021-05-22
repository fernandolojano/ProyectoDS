class Divisa < ApplicationRecord
    validates :token_divisa, presence: true
	validates :nombre_divisa, presence: true
	validates :simbolo, presence: true
    validates_uniqueness_of :token_divisa
	validates_uniqueness_of :nombre_divisa
	validates_uniqueness_of :simbolo
	validates_numericality_of :valor, :greater_than => 0
end
