require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      CommentID: "MyString",
      Text: "MyText",
      AnnouncementID: "MyString",
      UIN: "MyString"
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "input[name=?]", "comment[CommentID]"

      assert_select "textarea[name=?]", "comment[Text]"

      assert_select "input[name=?]", "comment[AnnouncementID]"

      assert_select "input[name=?]", "comment[UIN]"
    end
  end
end
