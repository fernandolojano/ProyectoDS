require "test_helper"

class UsuarioTest < ActiveSupport::TestCase

   test "Caso de prueba usuario 1" do
      # Primer caso: Usuario que ya pertenece a la base de datos
   	usuario = Usuario.new(username: usuarios(:one).username, nombre:"Moises", password:"12345678")
      assert_not usuario.save, "Se ha guardado un usuario con un nombre de usuario en uso"
   end

   test "Caso de prueba usuario 2" do
      # Segundo caso: Nuevo usuario con contraseña no válida
      usuario = Usuario.new(username:"GFernando", nombre:"Fernando", password:"12")
   	assert_not usuario.save, "Se ha guardado un usuario con una pass muy corta"
   end
      
   test "Caso de prueba usuario 3" do
      # Tercer caso: Nuevo usuario con parámetros correctos
      usuario = Usuario.new(username:"GFernando", nombre:"Fernando", password:"12345678")
   	assert usuario.save, "El usuario tenia que haberse guardado"
   end

end
