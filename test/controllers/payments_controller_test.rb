require 'test_helper'

class PaymentsControllerTest < ActionDispatch::IntegrationTest
  test "should get payment_page" do
    get payments_payment_page_url
    assert_response :success
  end

end
