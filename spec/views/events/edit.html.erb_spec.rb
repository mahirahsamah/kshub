require 'rails_helper'

RSpec.describe "events/edit", type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
      EventID: "MyString",
      UIN: "MyString",
      AnnouncementID: "MyString",
      EventLocation: "MyString",
      EventTitle: "MyString",
      EventOrganizer: "MyString"
    ))
  end

  it "renders the edit event form" do
    render

    assert_select "form[action=?][method=?]", event_path(@event), "post" do

      assert_select "input[name=?]", "event[EventID]"

      assert_select "input[name=?]", "event[UIN]"

      assert_select "input[name=?]", "event[AnnouncementID]"

      assert_select "input[name=?]", "event[EventLocation]"

      assert_select "input[name=?]", "event[EventTitle]"

      assert_select "input[name=?]", "event[EventOrganizer]"
    end
  end
end
