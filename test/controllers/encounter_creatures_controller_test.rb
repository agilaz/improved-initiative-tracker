require 'test_helper'

class EncounterCreaturesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get encounter_creatures_show_url
    assert_response :success
  end

  test "should get new" do
    get encounter_creatures_new_url
    assert_response :success
  end

  test "should get edit" do
    get encounter_creatures_edit_url
    assert_response :success
  end

  test "should get delete" do
    get encounter_creatures_delete_url
    assert_response :success
  end

end
