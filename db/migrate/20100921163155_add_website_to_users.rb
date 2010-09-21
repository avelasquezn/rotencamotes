class AddWebsiteToUsers < ActiveRecord::Migration
  def self.up
  end
    add_column :users, :website, :string
  def self.down
  end
end

