require 'test_helper'

class RestrictionsControllerTest < ActionController::TestCase
  setup do
    @restriction = restrictions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restrictions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restriction" do
    assert_difference('Restriction.count') do
      post :create, restriction: { glutein_free: @restriction.glutein_free, lactose_free: @restriction.lactose_free, no_red_meat: @restriction.no_red_meat, ovo_lavto_vegetarian: @restriction.ovo_lavto_vegetarian, vegan: @restriction.vegan, vegetarian: @restriction.vegetarian }
    end

    assert_redirected_to restriction_path(assigns(:restriction))
  end

  test "should show restriction" do
    get :show, id: @restriction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @restriction
    assert_response :success
  end

  test "should update restriction" do
    patch :update, id: @restriction, restriction: { glutein_free: @restriction.glutein_free, lactose_free: @restriction.lactose_free, no_red_meat: @restriction.no_red_meat, ovo_lavto_vegetarian: @restriction.ovo_lavto_vegetarian, vegan: @restriction.vegan, vegetarian: @restriction.vegetarian }
    assert_redirected_to restriction_path(assigns(:restriction))
  end

  test "should destroy restriction" do
    assert_difference('Restriction.count', -1) do
      delete :destroy, id: @restriction
    end

    assert_redirected_to restrictions_path
  end
end
