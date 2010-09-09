class AddBannerColumnsToMovie < ActiveRecord::Migration
  def self.up
    add_column :movies, :banner_file_name,    :string
    add_column :movies, :banner_content_type, :string
    add_column :movies, :banner_file_size,    :integer
    add_column :movies, :banner_updated_at,   :datetime
  end

  def self.down
  end
end

