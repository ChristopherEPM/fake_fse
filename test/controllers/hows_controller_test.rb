require 'test_helper'

class HowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @how = hows(:one)
  end

  test "should get index" do
    get hows_url, as: :json
    assert_response :success
  end

  test "should create how" do
    assert_difference('How.count') do
      post hows_url, params: { how: { key: @how.key, value: @how.value } }, as: :json
    end

    assert_response 201
  end

  test "should show how" do
    get how_url(@how), as: :json
    assert_response :success
  end

  test "should update how" do
    patch how_url(@how), params: { how: { key: @how.key, value: @how.value } }, as: :json
    assert_response 200
  end

  test "should destroy how" do
    assert_difference('How.count', -1) do
      delete how_url(@how), as: :json
    end

    assert_response 204
  end
end
