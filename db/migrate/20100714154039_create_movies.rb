class CreateMovies < ActiveRecord::Migration
  def self.up
    create_table :movies do |t|
      t.string :title
      t.text :summary
      t.text :synopsis
      t.datetime :released_at
      t.string :lenght
      t.string :website

      t.timestamps
    end
  end

  def self.down
    drop_table :movies
  end
end
