require "test_helper"

class BalanceDivisaTest < ActiveSupport::TestCase
  test "Caso de prueba balance_divisa 1" do
    # Primer caso: Se introduce un valor de divisa 
    balance_divisa = BalanceDivisa.new(valor:-10, usuario_id: usuarios(:one).id, token_divisa: divisas(:two).token_divisa)
    assert_not balance_divisa.save, "Se ha guardado un balance divisa con valor negativo"
  end

  test "Caso de prueba balance_divisa 2" do
    # Segundo caso: Se introduce un balance de divisa correcto
    balance_divisa = BalanceDivisa.new(valor:10, usuario_id: usuarios(:one).id, token_divisa: divisas(:two).token_divisa)
    assert balance_divisa.save, "Balance Divisa tenia que haberse guardado"
  end
end
