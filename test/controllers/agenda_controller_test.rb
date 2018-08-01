require 'test_helper'

class AgendaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agendas = agenda(:one)
  end

  test "should get index" do
    get agenda_url
    assert_response :success
  end

  test "should get new" do
    get new_agendas_url
    assert_response :success
  end

  test "should create agendas" do
    assert_difference('Agendas.count') do
      post agenda_url, params: { agendas: { fecha: @agendas.fecha, hora_fin: @agendas.hora_fin, hora_inicio: @agendas.hora_inicio } }
    end

    assert_redirected_to agendas_url(Agendas.last)
  end

  test "should show agendas" do
    get agendas_url(@agendas)
    assert_response :success
  end

  test "should get edit" do
    get edit_agendas_url(@agendas)
    assert_response :success
  end

  test "should update agendas" do
    patch agendas_url(@agendas), params: { agendas: { fecha: @agendas.fecha, hora_fin: @agendas.hora_fin, hora_inicio: @agendas.hora_inicio } }
    assert_redirected_to agendas_url(@agendas)
  end

  test "should destroy agendas" do
    assert_difference('Agendas.count', -1) do
      delete agendas_url(@agendas)
    end

    assert_redirected_to agenda_url
  end
end
