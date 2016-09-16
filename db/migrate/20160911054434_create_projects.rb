class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.string :tags
      t.string :feature_image_url
      t.text :description
      t.text :problem
      t.text :solution
      t.string :client
      t.string :demo_url

      t.timestamps
    end
  end
end
