require "application_system_test_case"

class ImagemsTest < ApplicationSystemTestCase
  setup do
    @imagem = imagems(:one)
  end

  test "visiting the index" do
    visit imagems_url
    assert_selector "h1", text: "Imagems"
  end

  test "creating a Imagem" do
    visit imagems_url
    click_on "New Imagem"

    fill_in "Imagem", with: @imagem.imagem
    click_on "Create Imagem"

    assert_text "Imagem was successfully created"
    click_on "Back"
  end

  test "updating a Imagem" do
    visit imagems_url
    click_on "Edit", match: :first

    fill_in "Imagem", with: @imagem.imagem
    click_on "Update Imagem"

    assert_text "Imagem was successfully updated"
    click_on "Back"
  end

  test "destroying a Imagem" do
    visit imagems_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Imagem was successfully destroyed"
  end
end
