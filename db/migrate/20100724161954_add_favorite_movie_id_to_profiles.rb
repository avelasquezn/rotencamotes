class AddFavoriteMovieIdToProfiles < ActiveRecord::Migration
  def self.up
    add_column :profiles, :favorite_movie_id, :integer
  end

  def self.down
  end
end

