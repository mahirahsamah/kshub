require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        EventID: "Event",
        UIN: "Uin",
        AnnouncementID: "Announcement",
        EventLocation: "Event Location",
        EventTitle: "Event Title",
        EventOrganizer: "Event Organizer"
      ),
      Event.create!(
        EventID: "Event",
        UIN: "Uin",
        AnnouncementID: "Announcement",
        EventLocation: "Event Location",
        EventTitle: "Event Title",
        EventOrganizer: "Event Organizer"
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: "Event".to_s, count: 2
    assert_select "tr>td", text: "Uin".to_s, count: 2
    assert_select "tr>td", text: "Announcement".to_s, count: 2
    assert_select "tr>td", text: "Event Location".to_s, count: 2
    assert_select "tr>td", text: "Event Title".to_s, count: 2
    assert_select "tr>td", text: "Event Organizer".to_s, count: 2
  end
end
