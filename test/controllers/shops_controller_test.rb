require 'test_helper'

class ShopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shop = shops(:one)
  end

  test "should show shop" do
    get shop_url(@shop)
    assert_response :success
  end
  
  
end
