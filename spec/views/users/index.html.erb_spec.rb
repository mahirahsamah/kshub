require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        UIN: "Uin",
        FirstName: "First Name",
        LastName: "Last Name",
        PhoneNumber: "Phone Number",
        Email: "Email",
        isAdmin: false,
        PledgeClass: "Pledge Class",
        Major: "Major",
        Password: "Password"
      ),
      User.create!(
        UIN: "Uin",
        FirstName: "First Name",
        LastName: "Last Name",
        PhoneNumber: "Phone Number",
        Email: "Email",
        isAdmin: false,
        PledgeClass: "Pledge Class",
        Major: "Major",
        Password: "Password"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Uin".to_s, count: 2
    assert_select "tr>td", text: "First Name".to_s, count: 2
    assert_select "tr>td", text: "Last Name".to_s, count: 2
    assert_select "tr>td", text: "Phone Number".to_s, count: 2
    assert_select "tr>td", text: "Email".to_s, count: 2
    assert_select "tr>td", text: false.to_s, count: 2
    assert_select "tr>td", text: "Pledge Class".to_s, count: 2
    assert_select "tr>td", text: "Major".to_s, count: 2
    assert_select "tr>td", text: "Password".to_s, count: 2
  end
end
