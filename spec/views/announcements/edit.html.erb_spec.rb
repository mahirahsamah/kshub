# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'announcements/edit', type: :view do
  before(:each) do
    @announcement = assign(:announcement, Announcement.create!(
                                            title: 'MyString',
                                            body: 'MyText',
                                            user: nil
                                          ))
  end

  it 'renders the edit announcement form' do
    render

    assert_select 'form[action=?][method=?]', announcement_path(@announcement), 'post' do
      assert_select 'input[name=?]', 'announcement[title]'

      assert_select 'textarea[name=?]', 'announcement[body]'

      assert_select 'input[name=?]', 'announcement[user_id]'
    end
  end
end
