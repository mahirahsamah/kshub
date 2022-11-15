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

    test "can edit merch" do
        get edit_merch_url
        assert_response :success
    end
end