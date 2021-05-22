require "test_helper"

class DivisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @divisa = divisas(:one)
  end

  test "should get index" do
    get divisas_url
    assert_response :success
  end

  test "should get new" do
    get new_divisa_url
    assert_response :success
  end

  test "should create divisa" do
    assert_difference('Divisa.count') do
      post divisas_url, params: { divisa: { nombre_divisa: @divisa.nombre_divisa, simbolo: @divisa.simbolo, token_divisa: @divisa.token_divisa, valor: @divisa.valor } }
    end

    assert_redirected_to divisa_url(Divisa.last)
  end

  test "should show divisa" do
    get divisa_url(@divisa)
    assert_response :success
  end

  test "should get edit" do
    get edit_divisa_url(@divisa)
    assert_response :success
  end

  test "should update divisa" do
    patch divisa_url(@divisa), params: { divisa: { nombre_divisa: @divisa.nombre_divisa, simbolo: @divisa.simbolo, token_divisa: @divisa.token_divisa, valor: @divisa.valor } }
    assert_redirected_to divisa_url(@divisa)
  end

  test "should destroy divisa" do
    assert_difference('Divisa.count', -1) do
      delete divisa_url(@divisa)
    end

    assert_redirected_to divisas_url
  end
end
