require "test_helper"

class LoginFlowTest < ActionDispatch::IntegrationTest
  test "Crear un nuevo usuario incorrecto" do
    get "/usuarios/new"
    assert_response :success
    post "/usuarios",
    params: { usuario: { nombre: "Moises", username: "mnc99", password: 1234 } }
    assert_response 422
  end

  test "Crear un nuevo usuario correcto" do
    get "/usuarios/new"
    assert_response :success
    post "/usuarios",
    params: { usuario: { nombre: "Juan", username: "juan_123", password: 12345678 } }
    assert_response :redirect
    follow_redirect!
    assert_response :success

    get "/usuarios"
    assert_select "td", "Juan"
  end 
end
