class AddFavoriteAttributesToProfiles < ActiveRecord::Migration
  def self.up
    add_column :profiles, :favorite_actor, :integer
    add_column :profiles, :favorite_genre, :integer
    add_column :profiles, :favorite_director, :integer
  end

  def self.down
  end
end

