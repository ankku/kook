require 'test_helper'

class ContentPagesControllerTest < ActionController::TestCase
  test "should get recommended" do
    get :recommended
    assert_response :success
  end

  test "should get browse" do
    get :browse
    assert_response :success
  end

  test "should get my_events" do
    get :my_events
    assert_response :success
  end

  test "should get create" do
    get :create
    assert_response :success
  end

end
