class RemoveCategoryIdFromPosts < ActiveRecord::Migration
  def self.up
    remove_column :posts, :category_id
  end

  def self.down
  end
end

