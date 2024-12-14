require "test_helper"

class EntregasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get entregas_index_url
    assert_response :success
  end

  test "should get new" do
    get entregas_new_url
    assert_response :success
  end

  test "should get create" do
    get entregas_create_url
    assert_response :success
  end

  test "should get show" do
    get entregas_show_url
    assert_response :success
  end
end
