class AddUserIdAndPermalinkToCategories < ActiveRecord::Migration
  def self.up
    add_column :categories, :user_id, :integer
    add_column :categories, :permalink, :string
  end

  def self.down
    remove_column :categories, :permalink
    remove_column :categories, :user_id
  end
end
