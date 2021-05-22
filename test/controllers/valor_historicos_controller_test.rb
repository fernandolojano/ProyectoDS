require "test_helper"

class ValorHistoricosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valor_historico = valor_historicos(:one)
  end

  test "should get index" do
    get valor_historicos_url
    assert_response :success
  end

  test "should get new" do
    get new_valor_historico_url
    assert_response :success
  end

  test "should create valor_historico" do
    assert_difference('ValorHistorico.count') do
      post valor_historicos_url, params: { valor_historico: { fecha: @valor_historico.fecha, valor: @valor_historico.valor } }
    end

    assert_redirected_to valor_historico_url(ValorHistorico.last)
  end

  test "should show valor_historico" do
    get valor_historico_url(@valor_historico)
    assert_response :success
  end

  test "should get edit" do
    get edit_valor_historico_url(@valor_historico)
    assert_response :success
  end

  test "should update valor_historico" do
    patch valor_historico_url(@valor_historico), params: { valor_historico: { fecha: @valor_historico.fecha, valor: @valor_historico.valor } }
    assert_redirected_to valor_historico_url(@valor_historico)
  end

  test "should destroy valor_historico" do
    assert_difference('ValorHistorico.count', -1) do
      delete valor_historico_url(@valor_historico)
    end

    assert_redirected_to valor_historicos_url
  end
end
