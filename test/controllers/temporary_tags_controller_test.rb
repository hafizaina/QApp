require 'test_helper'

class TemporaryTagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temporary_tag = temporary_tags(:one)
  end

  test "should get index" do
    get temporary_tags_url
    assert_response :success
  end

  test "should get new" do
    get new_temporary_tag_url
    assert_response :success
  end

  test "should create temporary_tag" do
    assert_difference('TemporaryTag.count') do
      post temporary_tags_url, params: { temporary_tag: { customer: @temporary_tag.customer, lien_fee: @temporary_tag.lien_fee, mva_total: @temporary_tag.mva_total, online_fee: @temporary_tag.online_fee, service_fee: @temporary_tag.service_fee, special_plates: @temporary_tag.special_plates, tax_fee: @temporary_tag.tax_fee, temp_tag: @temporary_tag.temp_tag, title_fee: @temporary_tag.title_fee, total_paid: @temporary_tag.total_paid } }
    end

    assert_redirected_to temporary_tag_url(TemporaryTag.last)
  end

  test "should show temporary_tag" do
    get temporary_tag_url(@temporary_tag)
    assert_response :success
  end

  test "should get edit" do
    get edit_temporary_tag_url(@temporary_tag)
    assert_response :success
  end

  test "should update temporary_tag" do
    patch temporary_tag_url(@temporary_tag), params: { temporary_tag: { customer: @temporary_tag.customer, lien_fee: @temporary_tag.lien_fee, mva_total: @temporary_tag.mva_total, online_fee: @temporary_tag.online_fee, service_fee: @temporary_tag.service_fee, special_plates: @temporary_tag.special_plates, tax_fee: @temporary_tag.tax_fee, temp_tag: @temporary_tag.temp_tag, title_fee: @temporary_tag.title_fee, total_paid: @temporary_tag.total_paid } }
    assert_redirected_to temporary_tag_url(@temporary_tag)
  end

  test "should destroy temporary_tag" do
    assert_difference('TemporaryTag.count', -1) do
      delete temporary_tag_url(@temporary_tag)
    end

    assert_redirected_to temporary_tags_url
  end
end
