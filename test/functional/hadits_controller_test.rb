require 'test_helper'

class HaditsControllerTest < ActionController::TestCase
  setup do
    @hadit = hadits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:hadits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create hadit" do
    assert_difference('Hadit.count') do
      post :create, hadit: { book: @hadit.book, matan: @hadit.matan }
    end

    assert_redirected_to hadit_path(assigns(:hadit))
  end

  test "should show hadit" do
    get :show, id: @hadit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @hadit
    assert_response :success
  end

  test "should update hadit" do
    put :update, id: @hadit, hadit: { book: @hadit.book, matan: @hadit.matan }
    assert_redirected_to hadit_path(assigns(:hadit))
  end

  test "should destroy hadit" do
    assert_difference('Hadit.count', -1) do
      delete :destroy, id: @hadit
    end

    assert_redirected_to hadits_path
  end
end
