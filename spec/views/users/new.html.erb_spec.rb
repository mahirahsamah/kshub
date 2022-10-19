require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      UIN: "MyString",
      FirstName: "MyString",
      LastName: "MyString",
      PhoneNumber: "MyString",
      Email: "MyString",
      isAdmin: false,
      PledgeClass: "MyString",
      Major: "MyString",
      Password: "MyString"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[UIN]"

      assert_select "input[name=?]", "user[FirstName]"

      assert_select "input[name=?]", "user[LastName]"

      assert_select "input[name=?]", "user[PhoneNumber]"

      assert_select "input[name=?]", "user[Email]"

      assert_select "input[name=?]", "user[isAdmin]"

      assert_select "input[name=?]", "user[PledgeClass]"

      assert_select "input[name=?]", "user[Major]"

      assert_select "input[name=?]", "user[Password]"
    end
  end
end
