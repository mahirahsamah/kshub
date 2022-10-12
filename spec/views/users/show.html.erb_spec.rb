require 'rails_helper'

RSpec.describe "users/show", type: :view do
  before(:each) do
    @user = assign(:user, User.create!(
      UIN: "Uin",
      FirstName: "First Name",
      LastName: "Last Name",
      PhoneNumber: "Phone Number",
      Email: "Email",
      isAdmin: false,
      PledgeClass: "Pledge Class",
      Major: "Major",
      Password: "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Uin/)
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Phone Number/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Pledge Class/)
    expect(rendered).to match(/Major/)
    expect(rendered).to match(/Password/)
  end
end
