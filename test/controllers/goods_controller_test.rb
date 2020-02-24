require 'test_helper'

class GoodsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get goods_index_url
    assert_response :success
  end

  test "should get create" do
    get goods_create_url
    assert_response :success
  end

  test "should get new" do
    get goods_new_url
    assert_response :success
  end

end
