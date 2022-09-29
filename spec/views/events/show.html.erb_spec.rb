require 'rails_helper'

RSpec.describe "events/show", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      EventID: "Event",
      UIN: "Uin",
      AnnouncementID: "Announcement",
      EventLocation: "Event Location",
      EventTitle: "Event Title",
      EventOrganizer: "Event Organizer"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Event/)
    expect(rendered).to match(/Uin/)
    expect(rendered).to match(/Announcement/)
    expect(rendered).to match(/Event Location/)
    expect(rendered).to match(/Event Title/)
    expect(rendered).to match(/Event Organizer/)
  end
end
