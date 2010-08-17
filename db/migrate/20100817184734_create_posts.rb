class CreatePosts < ActiveRecord::Migration
  def self.up
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.integer :category_id
      t.integer :user_id
      t.string :permalink
      t.integer :blog_id
      t.datetime :drafted_at
      t.datetime :published_at
      t.datetime :reviewed_at
      t.string :cached_tag_list
      t.integer :comments_count
      t.integer :visits_count
      t.decimal :rating, :precision => 4, :scale => 2, :default => 0.0
      t.boolean :delta, :default => true
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :posts
  end
end

