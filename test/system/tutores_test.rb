require "application_system_test_case"

class TutoresTest < ApplicationSystemTestCase
  setup do
    @tutor = tutores(:one)
  end

  test "visiting the index" do
    visit tutores_url
    assert_selector "h1", text: "Tutores"
  end

  test "creating a Tutor" do
    visit tutores_url
    click_on "New Tutor"

    fill_in "Apellido", with: @tutor.apellido
    fill_in "Cedula", with: @tutor.cedula
    fill_in "Direccion", with: @tutor.direccion
    fill_in "Nombre", with: @tutor.nombre
    fill_in "Telefono", with: @tutor.telefono
    click_on "Create Tutor"

    assert_text "Tutor was successfully created"
    click_on "Back"
  end

  test "updating a Tutor" do
    visit tutores_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @tutor.apellido
    fill_in "Cedula", with: @tutor.cedula
    fill_in "Direccion", with: @tutor.direccion
    fill_in "Nombre", with: @tutor.nombre
    fill_in "Telefono", with: @tutor.telefono
    click_on "Update Tutor"

    assert_text "Tutor was successfully updated"
    click_on "Back"
  end

  test "destroying a Tutor" do
    visit tutores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Tutor was successfully destroyed"
  end
end
