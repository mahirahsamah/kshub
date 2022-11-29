# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'events/edit', type: :view do
  before(:each) do
    @event = assign(:event, Event.create!(
                              title: 'MyString',
                              body: 'MyText',
                              location: 'MyString',
                              organizer: 'MyString',
                              user: nil
                            ))
  end

  it 'renders the edit event form' do
    render

    assert_select 'form[action=?][method=?]', event_path(@event), 'post' do
      assert_select 'input[name=?]', 'event[title]'

      assert_select 'textarea[name=?]', 'event[body]'

      assert_select 'input[name=?]', 'event[location]'

      assert_select 'input[name=?]', 'event[organizer]'

      assert_select 'input[name=?]', 'event[user_id]'
    end
  end
end
