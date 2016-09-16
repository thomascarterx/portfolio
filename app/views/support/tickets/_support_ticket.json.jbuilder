json.extract! support_ticket, :id, :customer_id, :problem, :urgency, :closed, :created_at, :updated_at
json.url support_ticket_url(support_ticket, format: :json)