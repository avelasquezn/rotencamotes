class RemoveProcedenceFromPerson < ActiveRecord::Migration
  def self.up
    remove_column :people, :procedence
  end

  def self.down
  end
end

