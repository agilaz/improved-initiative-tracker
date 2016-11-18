require 'test_helper'

class CreaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get creatures_index_url
    assert_response :success
  end

  test "should get show" do
    get creatures_show_url
    assert_response :success
  end

  test "should get new" do
    get creatures_new_url
    assert_response :success
  end

  test "should get edit" do
    get creatures_edit_url
    assert_response :success
  end

  test "should get delete" do
    get creatures_delete_url
    assert_response :success
  end

end
