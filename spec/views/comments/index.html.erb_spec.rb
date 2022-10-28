require 'rails_helper'

RSpec.describe "comments/index", type: :view do
  before(:each) do
    assign(:comments, [
      Comment.create!(
        CommentID: "Comment",
        Text: "MyText",
        AnnouncementID: "Announcement",
        UIN: "Uin"
      ),
      Comment.create!(
        CommentID: "Comment",
        Text: "MyText",
        AnnouncementID: "Announcement",
        UIN: "Uin"
      )
    ])
  end

  it "renders a list of comments" do
    render
    assert_select "tr>td", text: "Comment".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Announcement".to_s, count: 2
    assert_select "tr>td", text: "Uin".to_s, count: 2
  end
end
