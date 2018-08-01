require 'test_helper'

class TutoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tutor = tutores(:one)
  end

  test "should get index" do
    get tutores_url
    assert_response :success
  end

  test "should get new" do
    get new_tutor_url
    assert_response :success
  end

  test "should create tutor" do
    assert_difference('Tutor.count') do
      post tutores_url, params: { tutor: { apellido: @tutor.apellido, cedula: @tutor.cedula, direccion: @tutor.direccion, nombre: @tutor.nombre, telefono: @tutor.telefono } }
    end

    assert_redirected_to tutor_url(Tutor.last)
  end

  test "should show tutor" do
    get tutor_url(@tutor)
    assert_response :success
  end

  test "should get edit" do
    get edit_tutor_url(@tutor)
    assert_response :success
  end

  test "should update tutor" do
    patch tutor_url(@tutor), params: { tutor: { apellido: @tutor.apellido, cedula: @tutor.cedula, direccion: @tutor.direccion, nombre: @tutor.nombre, telefono: @tutor.telefono } }
    assert_redirected_to tutor_url(@tutor)
  end

  test "should destroy tutor" do
    assert_difference('Tutor.count', -1) do
      delete tutor_url(@tutor)
    end

    assert_redirected_to tutores_url
  end
end
