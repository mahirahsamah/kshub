# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'profile_page/index', type: :view do
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
                            password: 'password123',
                            admin: false
                          ))
  end

  it 'renders user information' do
    render
    assert_select 'tr>td', text: 'FirsName'.to_s, count: 1
    assert_select 'tr>td', text: 'LastName'.to_s, count: 1
    assert_select 'tr>td', text: 'PhoneNumber'.to_s, count: 1
    assert_select 'tr>td', text: 'Email'.to_s, count: 1
    assert_select 'tr>td', text: 'Major'.to_s, count: 1
    assert_select 'tr>td', text: 'PledgeClass'.to_s, count: 1
  end
end
