class RemoveFavoriteActorAndFavoriteGenreAndFavoriteDirectorFromProfiles < ActiveRecord::Migration
  def self.up
    remove_column :profiles, :favorite_actor
    remove_column :profiles, :favorite_genre
    remove_column :profiles, :favorite_director
  end

  def self.down
  end
end

