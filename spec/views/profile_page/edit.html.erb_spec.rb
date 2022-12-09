# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'users/edit', type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
                            firstname: 'FirstName',
                            lastname: 'LastName',
                            uin: 'UIN',
                            phonenumber: 'PhoneNumber',
                            email: 'email@gmail.com',
                            major: 'Major',
                            username: 'Username',
                            pledgeclass: 'PledgeClass',
                            password: 'Password'
                          ))
  end

  it 'renders the edit profile form' do
    render

    assert_select 'form[action=?][method=?]', edit_user_registration_path(@user), 'post' do
      assert_select 'input[name=?]', 'user[firstname]'

      assert_select 'input[name=?]', 'user[lastname]'

      assert_select 'input[name=?]', 'user[uin]'

      assert_select 'input[name=?]', 'user[phonenumber]'

      assert_select 'input[name=?]', 'user[email]'

      assert_select 'input[name=?]', 'user[major]'

      assert_select 'input[name=?]', 'user[username]'

      assert_select 'input[name=?]', 'user[pledgeclass]'
    end
  end
end
