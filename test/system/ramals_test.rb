require "application_system_test_case"

class RamalsTest < ApplicationSystemTestCase
  setup do
    @ramal = ramals(:one)
  end

  test "visiting the index" do
    visit ramals_url
    assert_selector "h1", text: "Ramals"
  end

  test "should create ramal" do
    visit ramals_url
    click_on "New ramal"

    fill_in "Email", with: @ramal.email
    fill_in "Setor", with: @ramal.setor
    fill_in "Telefone", with: @ramal.telefone
    click_on "Create Ramal"

    assert_text "Ramal was successfully created"
    click_on "Back"
  end

  test "should update Ramal" do
    visit ramal_url(@ramal)
    click_on "Edit this ramal", match: :first

    fill_in "Email", with: @ramal.email
    fill_in "Setor", with: @ramal.setor
    fill_in "Telefone", with: @ramal.telefone
    click_on "Update Ramal"

    assert_text "Ramal was successfully updated"
    click_on "Back"
  end

  test "should destroy Ramal" do
    visit ramal_url(@ramal)
    click_on "Destroy this ramal", match: :first

    assert_text "Ramal was successfully destroyed"
  end
end
