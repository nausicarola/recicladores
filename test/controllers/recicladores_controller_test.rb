require "test_helper"

class RecicladoresControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get recicladores_index_url
    assert_response :success
  end

  test "should get show" do
    get recicladores_show_url
    assert_response :success
  end

  test "should get new" do
    get recicladores_new_url
    assert_response :success
  end

  test "should get create" do
    get recicladores_create_url
    assert_response :success
  end

  test "should get edit" do
    get recicladores_edit_url
    assert_response :success
  end

  test "should get update" do
    get recicladores_update_url
    assert_response :success
  end

  test "should get destroy" do
    get recicladores_destroy_url
    assert_response :success
  end
end
