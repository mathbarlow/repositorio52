require "application_system_test_case"

class CalificacionTest < ApplicationSystemTestCase
  setup do
    @calificaciones = calificacion(:one)
  end

  test "visiting the index" do
    visit calificacion_url
    assert_selector "h1", text: "Calificacion"
  end

  test "creating a Calificaciones" do
    visit calificacion_url
    click_on "New Calificaciones"

    fill_in "Comentario", with: @calificaciones.comentario
    fill_in "Puntaje", with: @calificaciones.puntaje
    click_on "Create Calificaciones"

    assert_text "Calificaciones was successfully created"
    click_on "Back"
  end

  test "updating a Calificaciones" do
    visit calificacion_url
    click_on "Edit", match: :first

    fill_in "Comentario", with: @calificaciones.comentario
    fill_in "Puntaje", with: @calificaciones.puntaje
    click_on "Update Calificaciones"

    assert_text "Calificaciones was successfully updated"
    click_on "Back"
  end

  test "destroying a Calificaciones" do
    visit calificacion_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Calificaciones was successfully destroyed"
  end
end
