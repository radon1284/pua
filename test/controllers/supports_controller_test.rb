require 'test_helper'

class SupportsControllerTest < ActionDispatch::IntegrationTest
  test "should get faq" do
    get supports_faq_url
    assert_response :success
  end

  test "should get troubleshooting" do
    get supports_troubleshooting_url
    assert_response :success
  end

  test "should get chat" do
    get supports_chat_url
    assert_response :success
  end

  test "should get sms" do
    get supports_sms_url
    assert_response :success
  end

  test "should get calls" do
    get supports_calls_url
    assert_response :success
  end

  test "should get tickets" do
    get supports_tickets_url
    assert_response :success
  end

end
