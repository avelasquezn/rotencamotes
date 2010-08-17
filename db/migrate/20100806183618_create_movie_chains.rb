class CreateMovieChains < ActiveRecord::Migration
  def self.up
    create_table :movie_chains do |t|
      t.string :name
      t.string :address
      t.text :bio

      t.timestamps
    end
  end

  def self.down
    drop_table :movie_chains
  end
end
