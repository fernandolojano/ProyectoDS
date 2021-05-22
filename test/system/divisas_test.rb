require "application_system_test_case"

class DivisasTest < ApplicationSystemTestCase
  setup do
    @divisa = divisas(:one)
  end

  test "visiting the index" do
    visit divisas_url
    assert_selector "h1", text: "Divisas"
  end

  test "creating a Divisa" do
    visit divisas_url
    click_on "New Divisa"

    fill_in "Nombre divisa", with: @divisa.nombre_divisa
    fill_in "Simbolo", with: @divisa.simbolo
    fill_in "Token divisa", with: @divisa.token_divisa
    fill_in "Valor", with: @divisa.valor
    click_on "Create Divisa"

    assert_text "Divisa was successfully created"
    click_on "Back"
  end

  test "updating a Divisa" do
    visit divisas_url
    click_on "Edit", match: :first

    fill_in "Nombre divisa", with: @divisa.nombre_divisa
    fill_in "Simbolo", with: @divisa.simbolo
    fill_in "Token divisa", with: @divisa.token_divisa
    fill_in "Valor", with: @divisa.valor
    click_on "Update Divisa"

    assert_text "Divisa was successfully updated"
    click_on "Back"
  end

  test "destroying a Divisa" do
    visit divisas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Divisa was successfully destroyed"
  end
end
