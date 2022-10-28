require 'rails_helper'

RSpec.describe "merch_links/new", type: :view do
  before(:each) do
    assign(:merch_link, MerchLink.new(
      LinkID: "MyString",
      LinkDescription: "MyText",
      UIN: "MyString"
    ))
  end

  it "renders new merch_link form" do
    render

    assert_select "form[action=?][method=?]", merch_links_path, "post" do

      assert_select "input[name=?]", "merch_link[LinkID]"

      assert_select "textarea[name=?]", "merch_link[LinkDescription]"

      assert_select "input[name=?]", "merch_link[UIN]"
    end
  end
end
