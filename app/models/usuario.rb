class Usuario < ApplicationRecord
    validates :username, presence: true
    validates :name, presence: true
    validates :password, presence: true
    validates_uniqueness_of :username
    validates_confirmation_of :password, :on => :create
    validates_length_of :password, :within => 8..20
end
