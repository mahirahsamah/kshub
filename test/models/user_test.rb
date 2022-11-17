require 'test_helper'

class UserTest < ActiveSupport::TestCase
    test "created time equals current time" do
        freeze_time
        assert_equal Time.current, User.create.created_at
    end
end