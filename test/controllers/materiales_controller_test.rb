require "test_helper"

class MaterialesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get materiales_index_url
    assert_response :success
  end

  test "should get show" do
    get materiales_show_url
    assert_response :success
  end

  test "should get new" do
    get materiales_new_url
    assert_response :success
  end

  test "should get create" do
    get materiales_create_url
    assert_response :success
  end

  test "should get edit" do
    get materiales_edit_url
    assert_response :success
  end

  test "should get update" do
    get materiales_update_url
    assert_response :success
  end

  test "should get destroy" do
    get materiales_destroy_url
    assert_response :success
  end
end
