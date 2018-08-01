require "application_system_test_case"

class AdministradoresTest < ApplicationSystemTestCase
  setup do
    @administrador = administradores(:one)
  end

  test "visiting the index" do
    visit administradores_url
    assert_selector "h1", text: "Administradores"
  end

  test "creating a Administrador" do
    visit administradores_url
    click_on "New Administrador"

    fill_in "Apellido", with: @administrador.apellido
    fill_in "Cedula", with: @administrador.cedula
    fill_in "Direccion", with: @administrador.direccion
    fill_in "Nombre", with: @administrador.nombre
    fill_in "Telefono", with: @administrador.telefono
    click_on "Create Administrador"

    assert_text "Administrador was successfully created"
    click_on "Back"
  end

  test "updating a Administrador" do
    visit administradores_url
    click_on "Edit", match: :first

    fill_in "Apellido", with: @administrador.apellido
    fill_in "Cedula", with: @administrador.cedula
    fill_in "Direccion", with: @administrador.direccion
    fill_in "Nombre", with: @administrador.nombre
    fill_in "Telefono", with: @administrador.telefono
    click_on "Update Administrador"

    assert_text "Administrador was successfully updated"
    click_on "Back"
  end

  test "destroying a Administrador" do
    visit administradores_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Administrador was successfully destroyed"
  end
end
