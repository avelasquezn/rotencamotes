class CreateBlogImages < ActiveRecord::Migration
  def self.up
    create_table :blog_images do |t|
      t.integer :blog_id
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
      t.string :image_url

      t.timestamps
    end
  end

  def self.down
    drop_table :blog_images
  end
end
