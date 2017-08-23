require 'test_helper'

class RegistrationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @registration = registrations(:one)
  end

  test "should get index" do
    get registrations_url
    assert_response :success
  end

  test "should get new" do
    get new_registration_url
    assert_response :success
  end

  test "should create registration" do
    assert_difference('Registration.count') do
      post registrations_url, params: { registration: { customer: @registration.customer, lien_fees: @registration.lien_fees, mva_total: @registration.mva_total, online_fee: @registration.online_fee, paid_total: @registration.paid_total, reg_surcharge: @registration.reg_surcharge, registration: @registration.registration, sale_tax: @registration.sale_tax, service_fee: @registration.service_fee, special_plates: @registration.special_plates, tag_transfer: @registration.tag_transfer, title_fee: @registration.title_fee } }
    end

    assert_redirected_to registration_url(Registration.last)
  end

  test "should show registration" do
    get registration_url(@registration)
    assert_response :success
  end

  test "should get edit" do
    get edit_registration_url(@registration)
    assert_response :success
  end

  test "should update registration" do
    patch registration_url(@registration), params: { registration: { customer: @registration.customer, lien_fees: @registration.lien_fees, mva_total: @registration.mva_total, online_fee: @registration.online_fee, paid_total: @registration.paid_total, reg_surcharge: @registration.reg_surcharge, registration: @registration.registration, sale_tax: @registration.sale_tax, service_fee: @registration.service_fee, special_plates: @registration.special_plates, tag_transfer: @registration.tag_transfer, title_fee: @registration.title_fee } }
    assert_redirected_to registration_url(@registration)
  end

  test "should destroy registration" do
    assert_difference('Registration.count', -1) do
      delete registration_url(@registration)
    end

    assert_redirected_to registrations_url
  end
end
