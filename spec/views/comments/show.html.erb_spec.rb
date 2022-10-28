require 'rails_helper'

RSpec.describe "comments/show", type: :view do
  before(:each) do
    @comment = assign(:comment, Comment.create!(
      CommentID: "Comment",
      Text: "MyText",
      AnnouncementID: "Announcement",
      UIN: "Uin"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Comment/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Announcement/)
    expect(rendered).to match(/Uin/)
  end
end
