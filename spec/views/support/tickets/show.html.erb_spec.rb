require 'rails_helper'

RSpec.describe "support/tickets/show", type: :view do
  before(:each) do
    @support_ticket = assign(:support_ticket, Support::Ticket.create!(
      :customer_id => 2,
      :problem => "MyText",
      :urgency => 3,
      :closed => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/false/)
  end
end
