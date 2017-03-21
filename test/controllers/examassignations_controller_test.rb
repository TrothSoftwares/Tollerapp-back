require 'test_helper'

class ExamassignationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @examassignation = examassignations(:one)
  end

  test "should get index" do
    get examassignations_url, as: :json
    assert_response :success
  end

  test "should create examassignation" do
    assert_difference('Examassignation.count') do
      post examassignations_url, params: { examassignation: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show examassignation" do
    get examassignation_url(@examassignation), as: :json
    assert_response :success
  end

  test "should update examassignation" do
    patch examassignation_url(@examassignation), params: { examassignation: {  } }, as: :json
    assert_response 200
  end

  test "should destroy examassignation" do
    assert_difference('Examassignation.count', -1) do
      delete examassignation_url(@examassignation), as: :json
    end

    assert_response 204
  end
end
