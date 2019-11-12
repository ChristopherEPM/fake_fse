require 'test_helper'

class RestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @rest = rests(:one)
  end

  test "should get index" do
    get rests_url, as: :json
    assert_response :success
  end

  test "should create rest" do
    assert_difference('Rest.count') do
      post rests_url, params: { rest: { app: @rest.app, role: @rest.role, user: @rest.user } }, as: :json
    end

    assert_response 201
  end

  test "should show rest" do
    get rest_url(@rest), as: :json
    assert_response :success
  end

  test "should update rest" do
    patch rest_url(@rest), params: { rest: { app: @rest.app, role: @rest.role, user: @rest.user } }, as: :json
    assert_response 200
  end

  test "should destroy rest" do
    assert_difference('Rest.count', -1) do
      delete rest_url(@rest), as: :json
    end

    assert_response 204
  end
end
