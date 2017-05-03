require 'test_helper'

class BackgroundimagesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @backgroundimage = backgroundimages(:one)
  end

  test "should get index" do
    get backgroundimages_url, as: :json
    assert_response :success
  end

  test "should create backgroundimage" do
    assert_difference('Backgroundimage.count') do
      post backgroundimages_url, params: { backgroundimage: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show backgroundimage" do
    get backgroundimage_url(@backgroundimage), as: :json
    assert_response :success
  end

  test "should update backgroundimage" do
    patch backgroundimage_url(@backgroundimage), params: { backgroundimage: {  } }, as: :json
    assert_response 200
  end

  test "should destroy backgroundimage" do
    assert_difference('Backgroundimage.count', -1) do
      delete backgroundimage_url(@backgroundimage), as: :json
    end

    assert_response 204
  end
end
