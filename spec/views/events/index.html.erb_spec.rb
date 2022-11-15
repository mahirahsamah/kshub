require 'rails_helper'

RSpec.describe "events/index", type: :view do
  before(:each) do
    assign(:events, [
      Event.create!(
        title: "Title",
        body: "MyText",
        location: "Location",
        organizer: "Organizer",
        user: nil
      ),
      Event.create!(
        title: "Title",
        body: "MyText",
        location: "Location",
        organizer: "Organizer",
        user: nil
      )
    ])
  end

  it "renders a list of events" do
    render
    assert_select "tr>td", text: "Title".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Location".to_s, count: 2
    assert_select "tr>td", text: "Organizer".to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end
