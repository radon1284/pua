require 'test_helper'

class SubscriptionsControllerTest < ActionDispatch::IntegrationTest
  test "should get my_subscrition" do
    get subscriptions_my_subscrition_url
    assert_response :success
  end

end
