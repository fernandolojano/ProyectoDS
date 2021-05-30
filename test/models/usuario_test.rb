require "test_helper"

class UsuarioTest < ActiveSupport::TestCase


   test "Password should be longer than 8 characters" do
   	 usuario = Usuario.new	
     assert_not usuario.save, "Saved usuario with Password length equals < 8"
   end

   test ".length returns a number bigger or equal than 8" do

      # Primer caso
   	usuario = Usuario.new(username:"GFernando", nombre:"Fernando", password:"12")
   	assert_equal true,usuario.password.length >= 8

      # Segundo caso
      usuario = Usuario.new(username:"GFernando", nombre:"Fernando", password:"12")
   	assert_equal true,usuario.password.length >= 8

      # Tercer caso
      usuario = Usuario.new(username:"GFernando", nombre:"Fernando", password:"12")
   	assert_equal true,usuario.password.length >= 8
   end

end
