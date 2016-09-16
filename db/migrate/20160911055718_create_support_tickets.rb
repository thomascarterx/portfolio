class CreateSupportTickets < ActiveRecord::Migration[5.0]
  def change
    create_table :support_tickets do |t|
      t.integer :customer_id
      t.text :problem
      t.integer :urgency
      t.boolean :closed

      t.timestamps
    end
  end
end
