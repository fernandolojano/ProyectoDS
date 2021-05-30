require "test_helper"

class CriptomonedaTest < ActiveSupport::TestCase
	test "Test modelo criptomonedas: Caso  1" do 
		criptomoneda = Criptomoneda.new(token_criptomoneda:"BTC", nombre:"Bitcoin", valor_actual:"50")
   		assert_not criptomoneda.save, "Error test Criptomoneda: La criptomoneda ya existe en la base de datos"	
	end

	test "Test modelo criptomoneda: Caso 2" do
		criptomoneda = Criptomoneda.new(token_criptomoneda:"XRP", nombre:"Ripple", valor_actual:"-10")
   		assert_not criptomoneda.save, "Error test Criptomoneda: La criptomoneda no puede tener un valor negativo"	
	end

	test "Test modelo criptomoneda: Caso 3" do
		criptomoneda = Criptomoneda.new(token_criptomoneda:"XRP", nombre:"Ripple", valor_actual:"1000")
   		assert criptomoneda.save, "Test Criptomoneda: Se ha producido un error al intentar introducir los valores"	
	end
end
