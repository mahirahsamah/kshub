require 'rails_helper'

RSpec.describe "merch_links/edit", type: :view do
  before(:each) do
    @merch_link = assign(:merch_link, MerchLink.create!(
      LinkID: "MyString",
      LinkDescription: "MyText",
      UIN: "MyString"
    ))
  end

  it "renders the edit merch_link form" do
    render

    assert_select "form[action=?][method=?]", merch_link_path(@merch_link), "post" do

      assert_select "input[name=?]", "merch_link[LinkID]"

      assert_select "textarea[name=?]", "merch_link[LinkDescription]"

      assert_select "input[name=?]", "merch_link[UIN]"
    end
  end
end
