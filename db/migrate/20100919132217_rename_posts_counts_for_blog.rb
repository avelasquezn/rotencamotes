class RenamePostsCountsForBlog < ActiveRecord::Migration
  def self.up
    rename_column :blogs, :posts_counts, :posts_count
  end

  def self.down
  end
end

