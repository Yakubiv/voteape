class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.text :content
      t.integer :likes_count, default: 0
      t.integer :dislikes_count, default: 0

      t.timestamps
    end
  end
end
