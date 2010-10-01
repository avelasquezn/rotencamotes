class AddHeadlinesToPosts < ActiveRecord::Migration
  def self.up
    add_column :posts, :headlines, :text
  end

  def self.down
    remove_column :posts, :headlines
  end
end
