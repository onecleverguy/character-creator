require 'test_helper'

class SoulsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:souls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create soul" do
    assert_difference('Soul.count') do
      post :create, :soul => { }
    end

    assert_redirected_to soul_path(assigns(:soul))
  end

  test "should show soul" do
    get :show, :id => souls(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => souls(:one).id
    assert_response :success
  end

  test "should update soul" do
    put :update, :id => souls(:one).id, :soul => { }
    assert_redirected_to soul_path(assigns(:soul))
  end

  test "should destroy soul" do
    assert_difference('Soul.count', -1) do
      delete :destroy, :id => souls(:one).id
    end

    assert_redirected_to souls_path
  end
end
