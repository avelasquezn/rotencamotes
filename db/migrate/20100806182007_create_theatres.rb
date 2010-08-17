class CreateTheatres < ActiveRecord::Migration
  def self.up
    create_table :theatres do |t|
      t.string :name
      t.string :address

      t.timestamps
    end
  end

  def self.down
    drop_table :theatres
  end
end
