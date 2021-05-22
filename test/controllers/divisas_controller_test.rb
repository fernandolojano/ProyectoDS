require "test_helper"

class DivisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @divisa = divisas(:one)
  end

  test "should get index" do
    get divisas_url, as: :json
    assert_response :success
  end

  test "should create divisa" do
    assert_difference('Divisa.count') do
      post divisas_url, params: { divisa: { nombre_divisa: @divisa.nombre_divisa, simbolo: @divisa.simbolo, token_divisa: @divisa.token_divisa, valor: @divisa.valor } }, as: :json
    end

    assert_response 201
  end

  test "should show divisa" do
    get divisa_url(@divisa), as: :json
    assert_response :success
  end

  test "should update divisa" do
    patch divisa_url(@divisa), params: { divisa: { nombre_divisa: @divisa.nombre_divisa, simbolo: @divisa.simbolo, token_divisa: @divisa.token_divisa, valor: @divisa.valor } }, as: :json
    assert_response 200
  end

  test "should destroy divisa" do
    assert_difference('Divisa.count', -1) do
      delete divisa_url(@divisa), as: :json
    end

    assert_response 204
  end
end
