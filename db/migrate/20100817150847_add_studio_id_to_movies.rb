class AddStudioIdToMovies < ActiveRecord::Migration
  def self.up
    add_column :movies, :studio_id, :integer
  end

  def self.down
  end
end

