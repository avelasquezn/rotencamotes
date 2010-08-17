require 'test_helper'

class MovieChainsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:movie_chains)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create movie_chain" do
    assert_difference('MovieChain.count') do
      post :create, :movie_chain => { }
    end

    assert_redirected_to movie_chain_path(assigns(:movie_chain))
  end

  test "should show movie_chain" do
    get :show, :id => movie_chains(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => movie_chains(:one).to_param
    assert_response :success
  end

  test "should update movie_chain" do
    put :update, :id => movie_chains(:one).to_param, :movie_chain => { }
    assert_redirected_to movie_chain_path(assigns(:movie_chain))
  end

  test "should destroy movie_chain" do
    assert_difference('MovieChain.count', -1) do
      delete :destroy, :id => movie_chains(:one).to_param
    end

    assert_redirected_to movie_chains_path
  end
end
