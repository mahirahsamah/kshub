require "test_helper"

class MerchesControllerTest < ActionDispatch::IntegrationTest
    setup do
        sign_in users(:mahirah)
    end
    test "merch new, redirect if can't login" do
        sign_out :user
        get new_merch_url
        assert_response :redirect
    end
    test "can get merches" do
        get merches_url
        assert_response :success
    end

    test "can get create merch" do
        get new_merch_url
        assert_response :success
    end
end