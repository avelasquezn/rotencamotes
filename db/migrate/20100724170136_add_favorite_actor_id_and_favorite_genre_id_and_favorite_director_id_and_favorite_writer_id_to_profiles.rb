class AddFavoriteActorIdAndFavoriteGenreIdAndFavoriteDirectorIdAndFavoriteWriterIdToProfiles < ActiveRecord::Migration
  def self.up
    add_column :profiles, :favorite_actor_id, :integer
    add_column :profiles, :favorite_genre_id, :integer
    add_column :profiles, :favorite_director_id, :integer
    add_column :profiles, :favorite_writer_id, :integer
  end

  def self.down
  end
end

