require 'test_helper'

class CalificacionControllerTest < ActionDispatch::IntegrationTest
  setup do
    @calificaciones = calificacion(:one)
  end

  test "should get index" do
    get calificacion_url
    assert_response :success
  end

  test "should get new" do
    get new_calificaciones_url
    assert_response :success
  end

  test "should create calificaciones" do
    assert_difference('Calificaciones.count') do
      post calificacion_url, params: { calificaciones: { comentario: @calificaciones.comentario, puntaje: @calificaciones.puntaje } }
    end

    assert_redirected_to calificaciones_url(Calificaciones.last)
  end

  test "should show calificaciones" do
    get calificaciones_url(@calificaciones)
    assert_response :success
  end

  test "should get edit" do
    get edit_calificaciones_url(@calificaciones)
    assert_response :success
  end

  test "should update calificaciones" do
    patch calificaciones_url(@calificaciones), params: { calificaciones: { comentario: @calificaciones.comentario, puntaje: @calificaciones.puntaje } }
    assert_redirected_to calificaciones_url(@calificaciones)
  end

  test "should destroy calificaciones" do
    assert_difference('Calificaciones.count', -1) do
      delete calificaciones_url(@calificaciones)
    end

    assert_redirected_to calificacion_url
  end
end
