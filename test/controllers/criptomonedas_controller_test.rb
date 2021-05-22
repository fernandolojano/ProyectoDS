require "test_helper"

class CriptomonedasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @criptomoneda = criptomonedas(:one)
  end

  test "should get index" do
    get criptomonedas_url
    assert_response :success
  end

  test "should get new" do
    get new_criptomoneda_url
    assert_response :success
  end

  test "should create criptomoneda" do
    assert_difference('Criptomoneda.count') do
      post criptomonedas_url, params: { criptomoneda: { nombre: @criptomoneda.nombre, token: @criptomoneda.token, valor_actual: @criptomoneda.valor_actual } }
    end

    assert_redirected_to criptomoneda_url(Criptomoneda.last)
  end

  test "should show criptomoneda" do
    get criptomoneda_url(@criptomoneda)
    assert_response :success
  end

  test "should get edit" do
    get edit_criptomoneda_url(@criptomoneda)
    assert_response :success
  end

  test "should update criptomoneda" do
    patch criptomoneda_url(@criptomoneda), params: { criptomoneda: { nombre: @criptomoneda.nombre, token: @criptomoneda.token, valor_actual: @criptomoneda.valor_actual } }
    assert_redirected_to criptomoneda_url(@criptomoneda)
  end

  test "should destroy criptomoneda" do
    assert_difference('Criptomoneda.count', -1) do
      delete criptomoneda_url(@criptomoneda)
    end

    assert_redirected_to criptomonedas_url
  end
end
