require "application_system_test_case"

class BalanceCriptomonedasTest < ApplicationSystemTestCase
  setup do
    @balance_criptomoneda = balance_criptomonedas(:one)
  end

  test "visiting the index" do
    visit balance_criptomonedas_url
    assert_selector "h1", text: "Balance Criptomonedas"
  end

  test "creating a Balance criptomoneda" do
    visit balance_criptomonedas_url
    click_on "New Balance Criptomoneda"

    fill_in "Criptomoneda", with: @balance_criptomoneda.criptomoneda_id
    fill_in "Usuario", with: @balance_criptomoneda.usuario
    fill_in "Valor", with: @balance_criptomoneda.valor
    click_on "Create Balance criptomoneda"

    assert_text "Balance criptomoneda was successfully created"
    click_on "Back"
  end

  test "updating a Balance criptomoneda" do
    visit balance_criptomonedas_url
    click_on "Edit", match: :first

    fill_in "Criptomoneda", with: @balance_criptomoneda.criptomoneda_id
    fill_in "Usuario", with: @balance_criptomoneda.usuario
    fill_in "Valor", with: @balance_criptomoneda.valor
    click_on "Update Balance criptomoneda"

    assert_text "Balance criptomoneda was successfully updated"
    click_on "Back"
  end

  test "destroying a Balance criptomoneda" do
    visit balance_criptomonedas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Balance criptomoneda was successfully destroyed"
  end
end
