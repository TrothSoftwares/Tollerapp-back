require 'test_helper'

class AssignationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assignation = assignations(:one)
  end

  test "should get index" do
    get assignations_url, as: :json
    assert_response :success
  end

  test "should create assignation" do
    assert_difference('Assignation.count') do
      post assignations_url, params: { assignation: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show assignation" do
    get assignation_url(@assignation), as: :json
    assert_response :success
  end

  test "should update assignation" do
    patch assignation_url(@assignation), params: { assignation: {  } }, as: :json
    assert_response 200
  end

  test "should destroy assignation" do
    assert_difference('Assignation.count', -1) do
      delete assignation_url(@assignation), as: :json
    end

    assert_response 204
  end
end
