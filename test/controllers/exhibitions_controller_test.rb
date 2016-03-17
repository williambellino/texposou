require 'test_helper'

class ExhibitionsControllerTest < ActionController::TestCase
  setup do
    @exhibition = exhibitions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exhibitions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exhibition" do
    assert_difference('Exhibition.count') do
      post :create, exhibition: { artist: @exhibition.artist, capacity: @exhibition.capacity, closing_at: @exhibition.closing_at, description: @exhibition.description, name: @exhibition.name, opening_at: @exhibition.opening_at, place: @exhibition.place, status: @exhibition.status }
    end

    assert_redirected_to exhibition_path(assigns(:exhibition))
  end

  test "should show exhibition" do
    get :show, id: @exhibition
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exhibition
    assert_response :success
  end

  test "should update exhibition" do
    patch :update, id: @exhibition, exhibition: { artist: @exhibition.artist, capacity: @exhibition.capacity, closing_at: @exhibition.closing_at, description: @exhibition.description, name: @exhibition.name, opening_at: @exhibition.opening_at, place: @exhibition.place, status: @exhibition.status }
    assert_redirected_to exhibition_path(assigns(:exhibition))
  end

  test "should destroy exhibition" do
    assert_difference('Exhibition.count', -1) do
      delete :destroy, id: @exhibition
    end

    assert_redirected_to exhibitions_path
  end
end
