require 'test_helper'

class SuggestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suggest = suggests(:one)
  end

  test "should get index" do
    get suggests_url
    assert_response :success
  end

  test "should get new" do
    get new_suggest_url
    assert_response :success
  end

  test "should create suggest" do
    assert_difference('Suggest.count') do
      post suggests_url, params: { suggest: { description: @suggest.description, image: @suggest.image, name: @suggest.name, price: @suggest.price, status: @suggest.status } }
    end

    assert_redirected_to suggest_url(Suggest.last)
  end

  test "should show suggest" do
    get suggest_url(@suggest)
    assert_response :success
  end

  test "should get edit" do
    get edit_suggest_url(@suggest)
    assert_response :success
  end

  test "should update suggest" do
    patch suggest_url(@suggest), params: { suggest: { description: @suggest.description, image: @suggest.image, name: @suggest.name, price: @suggest.price, status: @suggest.status } }
    assert_redirected_to suggest_url(@suggest)
  end

  test "should destroy suggest" do
    assert_difference('Suggest.count', -1) do
      delete suggest_url(@suggest)
    end

    assert_redirected_to suggests_url
  end
end
