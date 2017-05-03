require 'test_helper'

class WalletpaymentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @walletpayment = walletpayments(:one)
  end

  test "should get index" do
    get walletpayments_url, as: :json
    assert_response :success
  end

  test "should create walletpayment" do
    assert_difference('Walletpayment.count') do
      post walletpayments_url, params: { walletpayment: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show walletpayment" do
    get walletpayment_url(@walletpayment), as: :json
    assert_response :success
  end

  test "should update walletpayment" do
    patch walletpayment_url(@walletpayment), params: { walletpayment: {  } }, as: :json
    assert_response 200
  end

  test "should destroy walletpayment" do
    assert_difference('Walletpayment.count', -1) do
      delete walletpayment_url(@walletpayment), as: :json
    end

    assert_response 204
  end
end
