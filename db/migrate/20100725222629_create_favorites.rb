class CreateFavorites < ActiveRecord::Migration
  def self.up
    create_table :favorites do |t|
      t.integer :favoritable_id
      t.string :favoritable_type
      t.integer :profile_id

      t.timestamps
    end
  end

  def self.down
    drop_table :favorites
  end
end
