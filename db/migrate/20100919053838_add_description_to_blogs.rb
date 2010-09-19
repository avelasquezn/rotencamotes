class AddDescriptionToBlogs < ActiveRecord::Migration
  def self.up
    add_column :blogs, :description, :text
  end

  def self.down
  end
end

