require 'test_helper'

class ApexAccessControlControllerTest < ActionController::TestCase
  setup do
    @apex_access_control = apex_access_control(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:apex_access_control)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create apex_access_control" do
    assert_difference('ApexAccessControl.count') do
      post :create, :apex_access_control => { :admin_username => @apex_access_control.admin_username, :id => @apex_access_control.id }
    end

    assert_redirected_to apex_access_control_path(assigns(:apex_access_control))
  end

  test "should show apex_access_control" do
    get :show, :id => @apex_access_control
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @apex_access_control
    assert_response :success
  end

  test "should update apex_access_control" do
    put :update, :id => @apex_access_control, :apex_access_control => { :admin_username => @apex_access_control.admin_username, :id => @apex_access_control.id }
    assert_redirected_to apex_access_control_path(assigns(:apex_access_control))
  end

  test "should destroy apex_access_control" do
    assert_difference('ApexAccessControl.count', -1) do
      delete :destroy, :id => @apex_access_control
    end

    assert_redirected_to apex_access_control_index_path
  end
end
