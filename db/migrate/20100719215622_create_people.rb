class CreatePeople < ActiveRecord::Migration
  def self.up
    create_table :people do |t|
      t.string :firt_name
      t.string :middle_name
      t.string :last_name
      t.datetime :born_at
      t.string :born_in
      t.string :procedence
      t.text :bio

      t.timestamps
    end
  end

  def self.down
    drop_table :people
  end
end
