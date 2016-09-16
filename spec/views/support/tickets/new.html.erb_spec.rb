require 'rails_helper'

RSpec.describe "support/tickets/new", type: :view do
  before(:each) do
    assign(:support_ticket, Support::Ticket.new(
      :customer_id => 1,
      :problem => "MyText",
      :urgency => 1,
      :closed => false
    ))
  end

  it "renders new support_ticket form" do
    render

    assert_select "form[action=?][method=?]", support_tickets_path, "post" do

      assert_select "input#support_ticket_customer_id[name=?]", "support_ticket[customer_id]"

      assert_select "textarea#support_ticket_problem[name=?]", "support_ticket[problem]"

      assert_select "input#support_ticket_urgency[name=?]", "support_ticket[urgency]"

      assert_select "input#support_ticket_closed[name=?]", "support_ticket[closed]"
    end
  end
end
