class CreateStudios < ActiveRecord::Migration
  def self.up
    create_table :studios do |t|
      t.string :name
      t.string :address
      t.text :bio

      t.timestamps
    end
  end

  def self.down
    drop_table :studios
  end
end
