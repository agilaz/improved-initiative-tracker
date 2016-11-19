require 'test_helper'

class StatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get statuses_show_url
    assert_response :success
  end

  test "should get new" do
    get statuses_new_url
    assert_response :success
  end

  test "should get edit" do
    get statuses_edit_url
    assert_response :success
  end

  test "should get delete" do
    get statuses_delete_url
    assert_response :success
  end

end
