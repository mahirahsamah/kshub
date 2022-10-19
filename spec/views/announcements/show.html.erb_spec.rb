require 'rails_helper'

RSpec.describe "announcements/show", type: :view do
  before(:each) do
    @announcement = assign(:announcement, Announcement.create!(
      AnnouncementID: "Announcement",
      Text: "MyText",
      UIN: "Uin"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Announcement/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Uin/)
  end
end
