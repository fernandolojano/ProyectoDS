require "test_helper"

class UsuarioTest < ActiveSupport::TestCase


   test "Password should be longer than 8 characters" do
   	 usuario = Usuario.new	
     assert_not usuario.save, "Saved usuario with Password length equals < 8"
   end

   test ".length returns a number bigger or equal than 8" do
   	usuario = Usuario.new(username:"GFernando", nombre:"Fernando", password:"12345678")
   	assert_equal 8,usuario.password.length
   end
end
