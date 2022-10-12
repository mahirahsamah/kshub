require 'rails_helper'

RSpec.describe "announcements/new", type: :view do
  before(:each) do
    assign(:announcement, Announcement.new(
      AnnouncementID: "MyString",
      Text: "MyText",
      UIN: "MyString"
    ))
  end

  it "renders new announcement form" do
    render

    assert_select "form[action=?][method=?]", announcements_path, "post" do

      assert_select "input[name=?]", "announcement[AnnouncementID]"

      assert_select "textarea[name=?]", "announcement[Text]"

      assert_select "input[name=?]", "announcement[UIN]"
    end
  end
end
