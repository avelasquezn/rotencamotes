class CreateBlogs < ActiveRecord::Migration
  def self.up
    create_table :blogs do |t|
      t.string :name
      t.string :permalink
      t.string :banner_file_name
      t.string :banner_content_type
      t.string :banner_file_size
      t.string :banner_updated_at
      t.string :banner
      t.integer :category_id
      t.boolean :active
      t.boolean :communal
      t.integer :posts_counts
      t.integer :visits_count

      t.timestamps
    end
  end

  def self.down
    drop_table :blogs
  end
end
