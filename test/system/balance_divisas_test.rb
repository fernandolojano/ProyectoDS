require "application_system_test_case"

class BalanceDivisasTest < ApplicationSystemTestCase
  setup do
    @balance_divisa = balance_divisas(:one)
  end

  test "visiting the index" do
    visit balance_divisas_url
    assert_selector "h1", text: "Balance Divisas"
  end

  test "creating a Balance divisa" do
    visit balance_divisas_url
    click_on "New Balance Divisa"

    fill_in "Valor", with: @balance_divisa.valor
    click_on "Create Balance divisa"

    assert_text "Balance divisa was successfully created"
    click_on "Back"
  end

  test "updating a Balance divisa" do
    visit balance_divisas_url
    click_on "Edit", match: :first

    fill_in "Valor", with: @balance_divisa.valor
    click_on "Update Balance divisa"

    assert_text "Balance divisa was successfully updated"
    click_on "Back"
  end

  test "destroying a Balance divisa" do
    visit balance_divisas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Balance divisa was successfully destroyed"
  end
end
