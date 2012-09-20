require 'test_helper'

class RestControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get financialinstitutes" do
    get :financialinstitutes
    assert_response :success
  end

  test "should get initiatetransaction" do
    get :initiatetransaction
    assert_response :success
  end

  test "should get notify" do
    get :notify
    assert_response :success
  end

  test "should get receipt" do
    get :receipt
    assert_response :success
  end

  test "should get merchant" do
    get :merchant
    assert_response :success
  end

  test "should get transaction" do
    get :transaction
    assert_response :success
  end

end
