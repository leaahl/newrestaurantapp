require 'test_helper'

class RestaurantControllerTest < ActionDispatch::IntegrationTest
  test "should get Home" do
    get restaurant_Home_url
    assert_response :success
  end

end
