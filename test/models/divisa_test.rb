require "test_helper"

class DivisaTest < ActiveSupport::TestCase
  test "Caso de prueba divisa 1" do
    # Primer caso: Divisa que ya pertenece a la base de datos
    divisa = Divisa.new(token_divisa:"USD", nombre_divisa:"Pesetas", valor:200, simbolo:"P")
    assert_not divisa.save, "No se ha guardado el usuario porque ya existe"
  end

  test "Caso de prueba divisa 2" do
    # Segundo caso: Divisa con un valor negativo
    divisa = Divisa.new(token_divisa:"PES", nombre_divisa:"Pesetas", valor:-12, simbolo:"P")
    assert_not divisa.save, "No se ha guardado el usuario porque la password es muy corta"
  end
      
  test "Caso de prueba divisa 3" do
    # Tercer caso: Nueva divisa con parámetros correctos
    divisa = Divisa.new(token_divisa:"PES", nombre_divisa:"Pesetas", valor:200, simbolo:"P")
    assert divisa.save, "El usuario se ha guardado correctamente"
  end
end
