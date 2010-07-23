class AddUrlToPeople < ActiveRecord::Migration
  def self.up
    add_column :people, :url, :string
  end

  def self.down
    remove_column :people, :url
  end
end

