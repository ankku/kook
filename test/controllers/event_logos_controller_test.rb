require 'test_helper'

class EventLogosControllerTest < ActionController::TestCase
  setup do
    @event_logo = event_logos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:event_logos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create event_logo" do
    assert_difference('EventLogo.count') do
      post :create, event_logo: { logo_id: @event_logo.logo_id }
    end

    assert_redirected_to event_logo_path(assigns(:event_logo))
  end

  test "should show event_logo" do
    get :show, id: @event_logo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @event_logo
    assert_response :success
  end

  test "should update event_logo" do
    patch :update, id: @event_logo, event_logo: { logo_id: @event_logo.logo_id }
    assert_redirected_to event_logo_path(assigns(:event_logo))
  end

  test "should destroy event_logo" do
    assert_difference('EventLogo.count', -1) do
      delete :destroy, id: @event_logo
    end

    assert_redirected_to event_logos_path
  end
end
