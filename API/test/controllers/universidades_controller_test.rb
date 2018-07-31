require 'test_helper'

class UniversidadesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @universidad = universidades(:one)
  end

  test "should get index" do
    get universidades_url, as: :json
    assert_response :success
  end

  test "should create universidad" do
    assert_difference('Universidad.count') do
      post universidades_url, params: { universidad: { direcion: @universidad.direcion, nit: @universidad.nit, nombre: @universidad.nombre, telefono: @universidad.telefono } }, as: :json
    end

    assert_response 201
  end

  test "should show universidad" do
    get universidad_url(@universidad), as: :json
    assert_response :success
  end

  test "should update universidad" do
    patch universidad_url(@universidad), params: { universidad: { direcion: @universidad.direcion, nit: @universidad.nit, nombre: @universidad.nombre, telefono: @universidad.telefono } }, as: :json
    assert_response 200
  end

  test "should destroy universidad" do
    assert_difference('Universidad.count', -1) do
      delete universidad_url(@universidad), as: :json
    end

    assert_response 204
  end
end
