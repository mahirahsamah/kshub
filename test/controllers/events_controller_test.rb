require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
    setup do
        sign_in users(:mahirah)
    end
    test "events new, redirect if not logged in" do
        sign_out :user
        get new_event_url
        assert_response :redirect
    end
    
    test "can see events without logged in" do
        get events_url
        assert_response :success
    end

    test "can get events index by logging in" do
        get events_url
        assert_response :success
    end

    test "can get new events" do
        get new_event_url
        assert_response :success
    end
end