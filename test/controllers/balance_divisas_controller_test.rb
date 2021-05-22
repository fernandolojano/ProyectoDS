require "test_helper"

class BalanceDivisasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balance_divisa = balance_divisas(:one)
  end

  test "should get index" do
    get balance_divisas_url
    assert_response :success
  end

  test "should get new" do
    get new_balance_divisa_url
    assert_response :success
  end

  test "should create balance_divisa" do
    assert_difference('BalanceDivisa.count') do
      post balance_divisas_url, params: { balance_divisa: { valor: @balance_divisa.valor } }
    end

    assert_redirected_to balance_divisa_url(BalanceDivisa.last)
  end

  test "should show balance_divisa" do
    get balance_divisa_url(@balance_divisa)
    assert_response :success
  end

  test "should get edit" do
    get edit_balance_divisa_url(@balance_divisa)
    assert_response :success
  end

  test "should update balance_divisa" do
    patch balance_divisa_url(@balance_divisa), params: { balance_divisa: { valor: @balance_divisa.valor } }
    assert_redirected_to balance_divisa_url(@balance_divisa)
  end

  test "should destroy balance_divisa" do
    assert_difference('BalanceDivisa.count', -1) do
      delete balance_divisa_url(@balance_divisa)
    end

    assert_redirected_to balance_divisas_url
  end
end
