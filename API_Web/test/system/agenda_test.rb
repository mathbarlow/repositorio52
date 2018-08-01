require "application_system_test_case"

class AgendaTest < ApplicationSystemTestCase
  setup do
    @agendas = agenda(:one)
  end

  test "visiting the index" do
    visit agenda_url
    assert_selector "h1", text: "Agenda"
  end

  test "creating a Agendas" do
    visit agenda_url
    click_on "New Agendas"

    fill_in "Fecha", with: @agendas.fecha
    fill_in "Hora Fin", with: @agendas.hora_fin
    fill_in "Hora Inicio", with: @agendas.hora_inicio
    click_on "Create Agendas"

    assert_text "Agendas was successfully created"
    click_on "Back"
  end

  test "updating a Agendas" do
    visit agenda_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @agendas.fecha
    fill_in "Hora Fin", with: @agendas.hora_fin
    fill_in "Hora Inicio", with: @agendas.hora_inicio
    click_on "Update Agendas"

    assert_text "Agendas was successfully updated"
    click_on "Back"
  end

  test "destroying a Agendas" do
    visit agenda_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Agendas was successfully destroyed"
  end
end
