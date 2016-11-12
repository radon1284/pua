require 'test_helper'

class CustomerDbsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_db = customer_dbs(:one)
  end

  test "should get index" do
    get customer_dbs_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_db_url
    assert_response :success
  end

  test "should create customer_db" do
    assert_difference('CustomerDb.count') do
      post customer_dbs_url, params: { customer_db: { location: @customer_db.location, mobile: @customer_db.mobile, name: @customer_db.name, subscription_plan: @customer_db.subscription_plan, telephone: @customer_db.telephone } }
    end

    assert_redirected_to customer_db_url(CustomerDb.last)
  end

  test "should show customer_db" do
    get customer_db_url(@customer_db)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_db_url(@customer_db)
    assert_response :success
  end

  test "should update customer_db" do
    patch customer_db_url(@customer_db), params: { customer_db: { location: @customer_db.location, mobile: @customer_db.mobile, name: @customer_db.name, subscription_plan: @customer_db.subscription_plan, telephone: @customer_db.telephone } }
    assert_redirected_to customer_db_url(@customer_db)
  end

  test "should destroy customer_db" do
    assert_difference('CustomerDb.count', -1) do
      delete customer_db_url(@customer_db)
    end

    assert_redirected_to customer_dbs_url
  end
end
