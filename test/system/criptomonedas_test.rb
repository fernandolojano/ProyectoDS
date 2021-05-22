require "application_system_test_case"

class CriptomonedasTest < ApplicationSystemTestCase
  setup do
    @criptomoneda = criptomonedas(:one)
  end

  test "visiting the index" do
    visit criptomonedas_url
    assert_selector "h1", text: "Criptomonedas"
  end

  test "creating a Criptomoneda" do
    visit criptomonedas_url
    click_on "New Criptomoneda"

    fill_in "Nombre", with: @criptomoneda.nombre
    fill_in "Token", with: @criptomoneda.token
    fill_in "Valor actual", with: @criptomoneda.valor_actual
    click_on "Create Criptomoneda"

    assert_text "Criptomoneda was successfully created"
    click_on "Back"
  end

  test "updating a Criptomoneda" do
    visit criptomonedas_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @criptomoneda.nombre
    fill_in "Token", with: @criptomoneda.token
    fill_in "Valor actual", with: @criptomoneda.valor_actual
    click_on "Update Criptomoneda"

    assert_text "Criptomoneda was successfully updated"
    click_on "Back"
  end

  test "destroying a Criptomoneda" do
    visit criptomonedas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Criptomoneda was successfully destroyed"
  end
end
