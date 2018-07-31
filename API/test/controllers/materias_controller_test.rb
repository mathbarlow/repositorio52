require 'test_helper'

class MateriasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @materia = materias(:one)
  end

  test "should get index" do
    get materias_url, as: :json
    assert_response :success
  end

  test "should create materia" do
    assert_difference('Materia.count') do
      post materias_url, params: { materia: { nombre: @materia.nombre } }, as: :json
    end

    assert_response 201
  end

  test "should show materia" do
    get materia_url(@materia), as: :json
    assert_response :success
  end

  test "should update materia" do
    patch materia_url(@materia), params: { materia: { nombre: @materia.nombre } }, as: :json
    assert_response 200
  end

  test "should destroy materia" do
    assert_difference('Materia.count', -1) do
      delete materia_url(@materia), as: :json
    end

    assert_response 204
  end
end
