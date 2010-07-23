class CreateMovieDirectors < ActiveRecord::Migration
  def self.up
    create_table :movie_directors do |t|
      t.integer :movie_id
      t.integer :director_id

      t.timestamps
    end
  end

  def self.down
    drop_table :movie_directors
  end
end
