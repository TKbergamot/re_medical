require 'test_helper'

class PatientCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get patient_comments_index_url
    assert_response :success
  end

  test "should get show" do
    get patient_comments_show_url
    assert_response :success
  end

  test "should get new" do
    get patient_comments_new_url
    assert_response :success
  end

  test "should get edit" do
    get patient_comments_edit_url
    assert_response :success
  end

end
