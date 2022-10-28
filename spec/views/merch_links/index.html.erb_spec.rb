require 'rails_helper'

RSpec.describe "merch_links/index", type: :view do
  before(:each) do
    assign(:merch_links, [
      MerchLink.create!(
        LinkID: "Link",
        LinkDescription: "MyText",
        UIN: "Uin"
      ),
      MerchLink.create!(
        LinkID: "Link",
        LinkDescription: "MyText",
        UIN: "Uin"
      )
    ])
  end

  it "renders a list of merch_links" do
    render
    assert_select "tr>td", text: "Link".to_s, count: 2
    assert_select "tr>td", text: "MyText".to_s, count: 2
    assert_select "tr>td", text: "Uin".to_s, count: 2
  end
end
