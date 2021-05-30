require "test_helper"

class UsuarioTest < ActiveSupport::TestCase

   test "Caso de prueba usuario 1" do
      # Primer caso: Usuario que ya pertenece a la base de datos
   	usuario = Usuario.new(username:"mnc99", nombre:"Moises", password:"12345678")
      assert_not usuario.save, "No se ha guardado el usuario porque ya existe"
   end

   test "Caso de prueba usuario 2" do
      # Segundo caso: Nuevo usuario con contraseña no válida
      usuario = Usuario.new(username:"GFernando", nombre:"Fernando", password:"12")
   	assert_not usuario.save, "No se ha guardado el usuario porque la password es muy corta"
   end
      
   test "Caso de prueba usuario 3" do
      # Tercer caso: Nuevo usuario con parámetros correctos
      usuario = Usuario.new(username:"GFernando", nombre:"Fernando", password:"12345678")
   	assert usuario.save, "El usuario se ha guardado correctamente"
   end

end
