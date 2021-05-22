require "test_helper"

class BalanceDivisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balance_divisa = balance_divisas(:one)
  end

  test "should get index" do
    get balance_divisas_url, as: :json
    assert_response :success
  end

  test "should create balance_divisa" do
    assert_difference('BalanceDivisa.count') do
      post balance_divisas_url, params: { balance_divisa: { divisa_id: @balance_divisa.divisa_id, usuario_id: @balance_divisa.usuario_id, valor: @balance_divisa.valor } }, as: :json
    end

    assert_response 201
  end

  test "should show balance_divisa" do
    get balance_divisa_url(@balance_divisa), as: :json
    assert_response :success
  end

  test "should update balance_divisa" do
    patch balance_divisa_url(@balance_divisa), params: { balance_divisa: { divisa_id: @balance_divisa.divisa_id, usuario_id: @balance_divisa.usuario_id, valor: @balance_divisa.valor } }, as: :json
    assert_response 200
  end

  test "should destroy balance_divisa" do
    assert_difference('BalanceDivisa.count', -1) do
      delete balance_divisa_url(@balance_divisa), as: :json
    end

    assert_response 204
  end
end
