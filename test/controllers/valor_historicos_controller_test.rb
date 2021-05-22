require "test_helper"

class ValorHistoricosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @valor_historico = valor_historicos(:one)
  end

  test "should get index" do
    get valor_historicos_url, as: :json
    assert_response :success
  end

  test "should create valor_historico" do
    assert_difference('ValorHistorico.count') do
      post valor_historicos_url, params: { valor_historico: { criptomoneda_id: @valor_historico.criptomoneda_id, fecha: @valor_historico.fecha, valor: @valor_historico.valor } }, as: :json
    end

    assert_response 201
  end

  test "should show valor_historico" do
    get valor_historico_url(@valor_historico), as: :json
    assert_response :success
  end

  test "should update valor_historico" do
    patch valor_historico_url(@valor_historico), params: { valor_historico: { criptomoneda_id: @valor_historico.criptomoneda_id, fecha: @valor_historico.fecha, valor: @valor_historico.valor } }, as: :json
    assert_response 200
  end

  test "should destroy valor_historico" do
    assert_difference('ValorHistorico.count', -1) do
      delete valor_historico_url(@valor_historico), as: :json
    end

    assert_response 204
  end
end
