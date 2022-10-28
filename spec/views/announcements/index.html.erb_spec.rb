require 'rails_helper'

RSpec.describe "announcements/index", type: :view do
  before(:each) do
    assign(:announcements, [
      Announcement.create!(
        AnnouncementID: "Announcement",
        Text: "MyText",
        UIN: "Uin"
      ),
      Announcement.create!(
        AnnouncementID: "Announcement",
        Text: "MyText",
        UIN: "Uin"
      )
    ])
  end

  it "renders a list of announcements" do
    render
    assert_select "tr>td", text: "Announcement".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Uin".to_s, count: 2
  end
end
