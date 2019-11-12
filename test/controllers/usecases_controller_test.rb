require 'test_helper'

class UsecasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @usecase = usecases(:one)
  end

  test "should get index" do
    get usecases_url, as: :json
    assert_response :success
  end

  test "should create usecase" do
    assert_difference('Usecase.count') do
      post usecases_url, params: { usecase: { how: @usecase.how, what: @usecase.what } }, as: :json
    end

    assert_response 201
  end

  test "should show usecase" do
    get usecase_url(@usecase), as: :json
    assert_response :success
  end

  test "should update usecase" do
    patch usecase_url(@usecase), params: { usecase: { how: @usecase.how, what: @usecase.what } }, as: :json
    assert_response 200
  end

  test "should destroy usecase" do
    assert_difference('Usecase.count', -1) do
      delete usecase_url(@usecase), as: :json
    end

    assert_response 204
  end
end
