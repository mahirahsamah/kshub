require "test_helper"

class KsHubsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ks_hub = ks_hubs(:one)
  end

  test "should get index" do
    get ks_hubs_url
    assert_response :success
  end

  test "should get new" do
    get new_ks_hub_url
    assert_response :success
  end

  test "should create ks_hub" do
    assert_difference('KsHub.count') do
      post ks_hubs_url, params: { ks_hub: { title: @ks_hub.title } }
    end

    assert_redirected_to ks_hub_url(KsHub.last)
  end

  test "should show ks_hub" do
    get ks_hub_url(@ks_hub)
    assert_response :success
  end

  test "should get edit" do
    get edit_ks_hub_url(@ks_hub)
    assert_response :success
  end

  test "should update ks_hub" do
    patch ks_hub_url(@ks_hub), params: { ks_hub: { title: @ks_hub.title } }
    assert_redirected_to ks_hub_url(@ks_hub)
  end

  test "should destroy ks_hub" do
    assert_difference('KsHub.count', -1) do
      delete ks_hub_url(@ks_hub)
    end

    assert_redirected_to ks_hubs_url
  end
end
