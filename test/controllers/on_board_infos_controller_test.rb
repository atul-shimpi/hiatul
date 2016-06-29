require 'test_helper'

class OnBoardInfosControllerTest < ActionController::TestCase
  setup do
    @on_board_info = on_board_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:on_board_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create on_board_info" do
    assert_difference('OnBoardInfo.count') do
      post :create, on_board_info: {  }
    end

    assert_redirected_to on_board_info_path(assigns(:on_board_info))
  end

  test "should show on_board_info" do
    get :show, id: @on_board_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @on_board_info
    assert_response :success
  end

  test "should update on_board_info" do
    patch :update, id: @on_board_info, on_board_info: {  }
    assert_redirected_to on_board_info_path(assigns(:on_board_info))
  end

  test "should destroy on_board_info" do
    assert_difference('OnBoardInfo.count', -1) do
      delete :destroy, id: @on_board_info
    end

    assert_redirected_to on_board_infos_path
  end
end
