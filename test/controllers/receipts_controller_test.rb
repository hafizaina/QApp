require 'test_helper'

class ReceiptsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receipt = receipts(:one)
  end

  test "should get index" do
    get titles_url
    assert_response :success
  end

  test "should get new" do
    get new_title_url
    assert_response :success
  end

  test "should create receipt" do
    assert_difference('Title.count') do
      post titles_url, params: {receipt: {customer: @receipt.customer, lien_fees: @receipt.lien_fees, mva_total: @receipt.mva_total, online_fee: @receipt.online_fee, service_fee: @receipt.service_fee, tax_fee: @receipt.tax_fee, title_fee: @receipt.title_fee, title_number: @receipt.title_number, total_paid: @receipt.total_paid } }
    end

    assert_redirected_to title_url(Title.last)
  end

  test "should show receipt" do
    get title_url(@receipt)
    assert_response :success
  end

  test "should get edit" do
    get edit_title_url(@receipt)
    assert_response :success
  end

  test "should update receipt" do
    patch title_url(@receipt), params: {receipt: {customer: @receipt.customer, lien_fees: @receipt.lien_fees, mva_total: @receipt.mva_total, online_fee: @receipt.online_fee, service_fee: @receipt.service_fee, tax_fee: @receipt.tax_fee, title_fee: @receipt.title_fee, title_number: @receipt.title_number, total_paid: @receipt.total_paid } }
    assert_redirected_to title_url(@receipt)
  end

  test "should destroy receipt" do
    assert_difference('Title.count', -1) do
      delete title_url(@receipt)
    end

    assert_redirected_to titles_url
  end
end
