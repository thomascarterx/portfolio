class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :author
      t.string :tags
      t.string :feature_image_url
      t.text :excerpt
      t.text :content

      t.timestamps
    end
  end
end
