require "test_helper"

class BalanceCriptomonedasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balance_criptomoneda = balance_criptomonedas(:one)
  end

  test "should get index" do
    get balance_criptomonedas_url
    assert_response :success
  end

  test "should get new" do
    get new_balance_criptomoneda_url
    assert_response :success
  end

  test "Caso 1: Fallo al crear un balance criptomoneda con un valor negativo" do
    post balance_criptomonedas_url, params: { balance_criptomoneda: { token_criptomoneda: @balance_criptomoneda.token_criptomoneda, usuario_id: @balance_criptomoneda.usuario_id, valor: -1 } }
    assert_response 422
  end

  test "Caso 2: Fallo al crear un balance criptomoneda con un valor positivo" do
    assert_difference('BalanceCriptomoneda.count') do
      post balance_criptomonedas_url, params: { balance_criptomoneda: { token_criptomoneda: @balance_criptomoneda.token_criptomoneda, usuario_id: @balance_criptomoneda.usuario_id, valor: 10 } }
    end

    assert_redirected_to balance_criptomoneda_url(BalanceCriptomoneda.last)
  end

  test "should show balance_criptomoneda" do
    get balance_criptomoneda_url(@balance_criptomoneda)
    assert_response :success
  end

  test "should get edit" do
    get edit_balance_criptomoneda_url(@balance_criptomoneda)
    assert_response :success
  end

  test "should update balance_criptomoneda" do
    patch balance_criptomoneda_url(@balance_criptomoneda), params: { balance_criptomoneda: { token_criptomoneda: @balance_criptomoneda.token_criptomoneda, usuario_id: @balance_criptomoneda.usuario_id, valor: @balance_criptomoneda.valor } }
    assert_redirected_to balance_criptomoneda_url(@balance_criptomoneda)
  end

  test "should destroy balance_criptomoneda" do
    assert_difference('BalanceCriptomoneda.count', -1) do
      delete balance_criptomoneda_url(@balance_criptomoneda)
    end

    assert_redirected_to balance_criptomonedas_url
  end
end
