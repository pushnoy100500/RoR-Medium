class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :slug
      t.string :title
      t.string :image_url
      t.text :content
      t.boolean :is_published

      t.timestamps null: false
    end
  end
end
