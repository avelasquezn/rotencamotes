class CreateProfiles < ActiveRecord::Migration
  def self.up
    create_table :profiles do |t|
      t.string :current_location
      t.string :favorite_movie_character
      t.string :favorite_movie_line

      t.timestamps
    end
  end

  def self.down
    drop_table :profiles
  end
end
