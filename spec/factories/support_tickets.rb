FactoryGirl.define do
  factory :support_ticket, class: 'Support::Ticket' do
    customer_id 1
    problem "MyText"
    urgency 1
    closed false
  end
end
