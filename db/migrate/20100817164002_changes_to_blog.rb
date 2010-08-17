class ChangesToBlog < ActiveRecord::Migration
  def self.up
   change_column :blogs, :banner_updated_at, :datetime
   change_column :blogs, :banner_file_size, :integer
   remove_column :blogs, :communal
  end

  def self.down
  end
end

