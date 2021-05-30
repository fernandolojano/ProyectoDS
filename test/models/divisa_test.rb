require "test_helper"

class DivisaTest < ActiveSupport::TestCase
  test "Caso de prueba divisa 1" do
    # Primer caso: Divisa que ya pertenece a la base de datos
    divisa = Divisa.new(token_divisa: divisas(:one).token_divisa, nombre_divisa:"Pesetas", valor:200, simbolo:"P")
    assert_not divisa.save, "La divisa se ha guardado con un token que ya existe"
  end

  test "Caso de prueba divisa 2" do
    # Segundo caso: Divisa con un valor negativo
    divisa = Divisa.new(token_divisa:"PES", nombre_divisa:"Pesetas", valor:-12, simbolo:"P")
    assert_not divisa.save, "La divisa se ha guardado porque se ha guardado con un valor negativo"
  end
      
  test "Caso de prueba divisa 3" do
    # Tercer caso: Nueva divisa con parámetros correctos
    divisa = Divisa.new(token_divisa:"PES", nombre_divisa:"Pesetas", valor:200, simbolo:"P")
    assert divisa.save, "La divisa tenia que haberse guardado"
  end
end
