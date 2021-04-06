require "test_helper"

class VehiculosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vehiculo = vehiculos(:one)
  end

  test "should get index" do
    get vehiculos_url, as: :json
    assert_response :success
  end

  test "should create vehiculo" do
    assert_difference('Vehiculo.count') do
      post vehiculos_url, params: { vehiculo: { descripcion: @vehiculo.descripcion, id_client: @vehiculo.id_client, tamano: @vehiculo.tamano, tipo: @vehiculo.tipo } }, as: :json
    end

    assert_response 201
  end

  test "should show vehiculo" do
    get vehiculo_url(@vehiculo), as: :json
    assert_response :success
  end

  test "should update vehiculo" do
    patch vehiculo_url(@vehiculo), params: { vehiculo: { descripcion: @vehiculo.descripcion, id_client: @vehiculo.id_client, tamano: @vehiculo.tamano, tipo: @vehiculo.tipo } }, as: :json
    assert_response 200
  end

  test "should destroy vehiculo" do
    assert_difference('Vehiculo.count', -1) do
      delete vehiculo_url(@vehiculo), as: :json
    end

    assert_response 204
  end
end
