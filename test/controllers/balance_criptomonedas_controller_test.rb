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

  test "should create balance_criptomoneda" do
    assert_difference('BalanceCriptomoneda.count') do
      post balance_criptomonedas_url, params: { balance_criptomoneda: { criptomoneda_id: @balance_criptomoneda.criptomoneda_id, usuario: @balance_criptomoneda.usuario, valor: @balance_criptomoneda.valor } }
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
    patch balance_criptomoneda_url(@balance_criptomoneda), params: { balance_criptomoneda: { criptomoneda_id: @balance_criptomoneda.criptomoneda_id, usuario: @balance_criptomoneda.usuario, valor: @balance_criptomoneda.valor } }
    assert_redirected_to balance_criptomoneda_url(@balance_criptomoneda)
  end

  test "should destroy balance_criptomoneda" do
    assert_difference('BalanceCriptomoneda.count', -1) do
      delete balance_criptomoneda_url(@balance_criptomoneda)
    end

    assert_redirected_to balance_criptomonedas_url
  end
end
