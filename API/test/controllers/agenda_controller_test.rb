require 'test_helper'

class AgendaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @agendas = agenda(:one)
  end

  test "should get index" do
    get agenda_url, as: :json
    assert_response :success
  end

  test "should create agendas" do
    assert_difference('Agendas.count') do
      post agenda_url, params: { agendas: { fecha: @agendas.fecha, hora_fin: @agendas.hora_fin, hora_inicio: @agendas.hora_inicio } }, as: :json
    end

    assert_response 201
  end

  test "should show agendas" do
    get agendas_url(@agendas), as: :json
    assert_response :success
  end

  test "should update agendas" do
    patch agendas_url(@agendas), params: { agendas: { fecha: @agendas.fecha, hora_fin: @agendas.hora_fin, hora_inicio: @agendas.hora_inicio } }, as: :json
    assert_response 200
  end

  test "should destroy agendas" do
    assert_difference('Agendas.count', -1) do
      delete agendas_url(@agendas), as: :json
    end

    assert_response 204
  end
end
