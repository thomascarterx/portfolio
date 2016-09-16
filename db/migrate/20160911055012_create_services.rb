class CreateServices < ActiveRecord::Migration[5.0]
  def change
    create_table :services do |t|
      t.string :title
      t.text :description
      t.string :feature_image_url

      t.timestamps
    end
  end
end
