class ChangeDefaultConstraintForStatusInPosts < ActiveRecord::Migration
  def self.up
    change_column :posts, :status, :string, :default => "drafted"
  end

  def self.down
  end
end

