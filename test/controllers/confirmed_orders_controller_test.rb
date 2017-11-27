require 'test_helper'

class ConfirmedOrdersControllerTest < ActionController::TestCase
  setup do
    @confirmed_order = confirmed_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:confirmed_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create confirmed_order" do
    assert_difference('ConfirmedOrder.count') do
      post :create, confirmed_order: { payment_method: @confirmed_order.payment_method, payment_status: @confirmed_order.payment_status, user_id: @confirmed_order.user_id }
    end

    assert_redirected_to confirmed_order_path(assigns(:confirmed_order))
  end

  test "should show confirmed_order" do
    get :show, id: @confirmed_order
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @confirmed_order
    assert_response :success
  end

  test "should update confirmed_order" do
    patch :update, id: @confirmed_order, confirmed_order: { payment_method: @confirmed_order.payment_method, payment_status: @confirmed_order.payment_status, user_id: @confirmed_order.user_id }
    assert_redirected_to confirmed_order_path(assigns(:confirmed_order))
  end

  test "should destroy confirmed_order" do
    assert_difference('ConfirmedOrder.count', -1) do
      delete :destroy, id: @confirmed_order
    end

    assert_redirected_to confirmed_orders_path
  end
end
