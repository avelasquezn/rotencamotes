class CreateMovieCharacters < ActiveRecord::Migration
  def self.up
    create_table :movie_characters do |t|
      t.integer :movie_id
      t.integer :person_id
      t.string :character_name

      t.timestamps
    end
  end

  def self.down
    drop_table :movie_characters
  end
end
