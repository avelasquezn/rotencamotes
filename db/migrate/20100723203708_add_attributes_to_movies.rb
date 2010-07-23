class AddAttributesToMovies < ActiveRecord::Migration
  def self.up
    add_column :movies, :country, :string
    add_column :movies, :language, :string
    add_column :movies, :mpaa_rate, :string
  end

  def self.down
    remove_column :movies, :mpaa_rate
    remove_column :movies, :language
    remove_column :movies, :country
  end
end
