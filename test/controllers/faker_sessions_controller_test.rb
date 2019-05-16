require 'test_helper'

class FakerSessionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get faker_sessions_new_url
    assert_response :success
  end

  test "should get create" do
    get faker_sessions_create_url
    assert_response :success
  end

  test "should get destroy" do
    get faker_sessions_destroy_url
    assert_response :success
  end

end
