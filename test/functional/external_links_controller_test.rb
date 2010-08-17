require 'test_helper'

class ExternalLinksControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:external_links)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create external_link" do
    assert_difference('ExternalLink.count') do
      post :create, :external_link => { }
    end

    assert_redirected_to external_link_path(assigns(:external_link))
  end

  test "should show external_link" do
    get :show, :id => external_links(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => external_links(:one).to_param
    assert_response :success
  end

  test "should update external_link" do
    put :update, :id => external_links(:one).to_param, :external_link => { }
    assert_redirected_to external_link_path(assigns(:external_link))
  end

  test "should destroy external_link" do
    assert_difference('ExternalLink.count', -1) do
      delete :destroy, :id => external_links(:one).to_param
    end

    assert_redirected_to external_links_path
  end
end
