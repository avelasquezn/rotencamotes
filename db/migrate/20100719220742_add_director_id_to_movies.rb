class AddDirectorIdToMovies < ActiveRecord::Migration
  def self.up
    add_column :movies, :director_id, :integer
  end

  def self.down
    remove_column :movies, :director_id
  end
end
