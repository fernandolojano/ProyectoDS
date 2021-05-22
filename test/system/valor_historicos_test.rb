require "application_system_test_case"

class ValorHistoricosTest < ApplicationSystemTestCase
  setup do
    @valor_historico = valor_historicos(:one)
  end

  test "visiting the index" do
    visit valor_historicos_url
    assert_selector "h1", text: "Valor Historicos"
  end

  test "creating a Valor historico" do
    visit valor_historicos_url
    click_on "New Valor Historico"

    fill_in "Fecha", with: @valor_historico.fecha
    fill_in "Valor", with: @valor_historico.valor
    click_on "Create Valor historico"

    assert_text "Valor historico was successfully created"
    click_on "Back"
  end

  test "updating a Valor historico" do
    visit valor_historicos_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @valor_historico.fecha
    fill_in "Valor", with: @valor_historico.valor
    click_on "Update Valor historico"

    assert_text "Valor historico was successfully updated"
    click_on "Back"
  end

  test "destroying a Valor historico" do
    visit valor_historicos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Valor historico was successfully destroyed"
  end
end
