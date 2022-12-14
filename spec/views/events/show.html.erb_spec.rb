# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/show', type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
                              title: 'Title',
                              body: 'MyText',
                              location: 'Location',
                              organizer: 'Organizer',
                              user: nil
                            ))
  end

  it 'renders attributes in <p>' do
    render
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Location/)
    expect(rendered).to match(/Organizer/)
    expect(rendered).to match(//)
  end
end
