class RemoveDirectorFromMovies < ActiveRecord::Migration
  def self.up
    remove_column :movies, :director_id
  end

  def self.down
  end
end

