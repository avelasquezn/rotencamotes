class RenameFirtNameToFirstNameForPeople < ActiveRecord::Migration
  def self.up
    rename_column :people, :firt_name, :first_name
  end

  def self.down
  end
end

