require 'test_helper'

class DoctorCommentsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get doctor_comments_index_url
    assert_response :success
  end

  test "should get show" do
    get doctor_comments_show_url
    assert_response :success
  end

  test "should get new" do
    get doctor_comments_new_url
    assert_response :success
  end

  test "should get edit" do
    get doctor_comments_edit_url
    assert_response :success
  end

end
