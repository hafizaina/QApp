require 'test_helper'

class TagRenewalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tag_renewal = tag_renewals(:one)
  end

  test "should get index" do
    get tag_renewals_url
    assert_response :success
  end

  test "should get new" do
    get new_tag_renewal_url
    assert_response :success
  end

  test "should create tag_renewal" do
    assert_difference('TagRenewal.count') do
      post tag_renewals_url, params: { tag_renewal: { admin_flag_fee: @tag_renewal.admin_flag_fee, customer: @tag_renewal.customer, mva_fee: @tag_renewal.mva_fee, mva_fee: @tag_renewal.mva_fee, online_fee: @tag_renewal.online_fee, paid_total: @tag_renewal.paid_total, reg_surcharge: @tag_renewal.reg_surcharge, registration: @tag_renewal.registration, service_fee: @tag_renewal.service_fee, special_plates: @tag_renewal.special_plates, temp_registration: @tag_renewal.temp_registration } }
    end

    assert_redirected_to tag_renewal_url(TagRenewal.last)
  end

  test "should show tag_renewal" do
    get tag_renewal_url(@tag_renewal)
    assert_response :success
  end

  test "should get edit" do
    get edit_tag_renewal_url(@tag_renewal)
    assert_response :success
  end

  test "should update tag_renewal" do
    patch tag_renewal_url(@tag_renewal), params: { tag_renewal: { admin_flag_fee: @tag_renewal.admin_flag_fee, customer: @tag_renewal.customer, mva_fee: @tag_renewal.mva_fee, mva_fee: @tag_renewal.mva_fee, online_fee: @tag_renewal.online_fee, paid_total: @tag_renewal.paid_total, reg_surcharge: @tag_renewal.reg_surcharge, registration: @tag_renewal.registration, service_fee: @tag_renewal.service_fee, special_plates: @tag_renewal.special_plates, temp_registration: @tag_renewal.temp_registration } }
    assert_redirected_to tag_renewal_url(@tag_renewal)
  end

  test "should destroy tag_renewal" do
    assert_difference('TagRenewal.count', -1) do
      delete tag_renewal_url(@tag_renewal)
    end

    assert_redirected_to tag_renewals_url
  end
end
