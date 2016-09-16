require 'rails_helper'

RSpec.describe "support/tickets/index", type: :view do
  before(:each) do
    assign(:support_tickets, [
      Support::Ticket.create!(
        :customer_id => 2,
        :problem => "MyText",
        :urgency => 3,
        :closed => false
      ),
      Support::Ticket.create!(
        :customer_id => 2,
        :problem => "MyText",
        :urgency => 3,
        :closed => false
      )
    ])
  end

  it "renders a list of support/tickets" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
