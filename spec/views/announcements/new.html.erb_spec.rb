# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'announcements/new', type: :view do
  before(:each) do
    assign(:announcement, Announcement.new(
                            title: 'MyString',
                            body: 'MyText',
                            user: nil
                          ))
  end

  it 'renders new announcement form' do
    render

    assert_select 'form[action=?][method=?]', announcements_path, 'post' do
      assert_select 'input[name=?]', 'announcement[title]'

      assert_select 'textarea[name=?]', 'announcement[body]'

      assert_select 'input[name=?]', 'announcement[user_id]'
    end
  end
end
