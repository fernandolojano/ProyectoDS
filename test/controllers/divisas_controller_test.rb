require "test_helper"

class DivisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @divisa = divisas(:three)
  end

  test "should get index" do
    get divisas_url
    assert_response :success
  end

  test "should get new" do
    get new_divisa_url
    assert_response :success
  end

  # test "should create divisa" do
  #   assert_difference('Divisa.count') do
  #     post divisas_url, params: { divisa: { nombre_divisa: @divisa.nombre_divisa, simbolo: @divisa.simbolo, token_divisa: @divisa.token_divisa, valor: @divisa.valor } }
  #   end

  #   assert_redirected_to divisa_url(Divisa.last)
  # end

  test "should show divisa" do
    get divisa_url(@divisa)
    assert_response :success
  end

  test "should get edit" do
    get edit_divisa_url(@divisa)
    assert_response :success
  end

  test "Caso 1: Cambiar el valor de una divisa a un valor negativo" do
    patch divisa_url(@divisa), params: { divisa: { valor: -10 } }
    assert_response 422
  end

  test "Caso 2: Cambiar el valor de una divisa por un valor positivo" do
    patch divisa_url(@divisa), params: { divisa: { valor: 10 } }
    assert_redirected_to divisa_url(@divisa)
  end

  test "Caso 1: Borrado de una divisa" do
    assert_difference('Divisa.count', -1) do
      delete divisa_url(@divisa)
    end

    assert_redirected_to divisas_url
  end
end
