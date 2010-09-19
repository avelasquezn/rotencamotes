class AddMovieIdToPost < ActiveRecord::Migration
  def self.up
    add_column :posts, :movie_id, :integer
  end

  def self.down
  end
end

