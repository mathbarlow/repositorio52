require 'test_helper'

class CalificacionControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calificaciones = calificacion(:one)
  end

  test "should get index" do
    get calificacion_url, as: :json
    assert_response :success
  end

  test "should create calificaciones" do
    assert_difference('Calificaciones.count') do
      post calificacion_url, params: { calificaciones: { comentario: @calificaciones.comentario, puntaje: @calificaciones.puntaje } }, as: :json
    end

    assert_response 201
  end

  test "should show calificaciones" do
    get calificaciones_url(@calificaciones), as: :json
    assert_response :success
  end

  test "should update calificaciones" do
    patch calificaciones_url(@calificaciones), params: { calificaciones: { comentario: @calificaciones.comentario, puntaje: @calificaciones.puntaje } }, as: :json
    assert_response 200
  end

  test "should destroy calificaciones" do
    assert_difference('Calificaciones.count', -1) do
      delete calificaciones_url(@calificaciones), as: :json
    end

    assert_response 204
  end
end
