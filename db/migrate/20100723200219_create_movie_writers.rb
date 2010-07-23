class CreateMovieWriters < ActiveRecord::Migration
  def self.up
    create_table :movie_writers do |t|
      t.integer :movie_id
      t.integer :writer_id

      t.timestamps
    end
  end

  def self.down
    drop_table :movie_writers
  end
end
