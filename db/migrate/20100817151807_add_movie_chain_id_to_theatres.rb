class AddMovieChainIdToTheatres < ActiveRecord::Migration
  def self.up
    add_column :theatres, :movie_chain_id, :integer
  end

  def self.down
  end
end

