require 'rails_helper'

RSpec.describe "merch_links/show", type: :view do
  before(:each) do
    @merch_link = assign(:merch_link, MerchLink.create!(
      LinkID: "Link",
      LinkDescription: "MyText",
      UIN: "Uin"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Link/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/Uin/)
  end
end
