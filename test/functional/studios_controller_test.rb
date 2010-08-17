require 'test_helper'

class StudiosControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:studios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create studio" do
    assert_difference('Studio.count') do
      post :create, :studio => { }
    end

    assert_redirected_to studio_path(assigns(:studio))
  end

  test "should show studio" do
    get :show, :id => studios(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => studios(:one).to_param
    assert_response :success
  end

  test "should update studio" do
    put :update, :id => studios(:one).to_param, :studio => { }
    assert_redirected_to studio_path(assigns(:studio))
  end

  test "should destroy studio" do
    assert_difference('Studio.count', -1) do
      delete :destroy, :id => studios(:one).to_param
    end

    assert_redirected_to studios_path
  end
end
