require 'rails_helper'

RSpec.describe "announcements/edit", type: :view do
  before(:each) do
    @announcement = assign(:announcement, Announcement.create!(
      AnnouncementID: "MyString",
      Text: "MyText",
      UIN: "MyString"
    ))
  end

  it "renders the edit announcement form" do
    render

    assert_select "form[action=?][method=?]", announcement_path(@announcement), "post" do

      assert_select "input[name=?]", "announcement[AnnouncementID]"

      assert_select "textarea[name=?]", "announcement[Text]"

      assert_select "input[name=?]", "announcement[UIN]"
    end
  end
end
