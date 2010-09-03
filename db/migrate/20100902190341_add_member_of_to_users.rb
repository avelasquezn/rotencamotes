class AddMemberOfToUsers < ActiveRecord::Migration
  def self.up
    add_column :users, :member_of, :string, :default => 'community'
  end

  def self.down
    remove_column :users, :member_of
  end
end

