require "test_helper"

class CriptomonedasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @criptomoneda = criptomonedas(:one)
  end

  test "should get index" do
    get criptomonedas_url, as: :json
    assert_response :success
  end

  test "should create criptomoneda" do
    assert_difference('Criptomoneda.count') do
      post criptomonedas_url, params: { criptomoneda: { nombre: @criptomoneda.nombre, token: @criptomoneda.token, valor_actual: @criptomoneda.valor_actual } }, as: :json
    end

    assert_response 201
  end

  test "should show criptomoneda" do
    get criptomoneda_url(@criptomoneda), as: :json
    assert_response :success
  end

  test "should update criptomoneda" do
    patch criptomoneda_url(@criptomoneda), params: { criptomoneda: { nombre: @criptomoneda.nombre, token: @criptomoneda.token, valor_actual: @criptomoneda.valor_actual } }, as: :json
    assert_response 200
  end

  test "should destroy criptomoneda" do
    assert_difference('Criptomoneda.count', -1) do
      delete criptomoneda_url(@criptomoneda), as: :json
    end

    assert_response 204
  end
end
