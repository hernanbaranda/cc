require "test_helper"

class IngresosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get ingresos_new_url
    assert_response :success
  end

  test "should get edit" do
    get ingresos_edit_url
    assert_response :success
  end
end
