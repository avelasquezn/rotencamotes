class AddTheatreIdToScores < ActiveRecord::Migration
  def self.up
    add_column :scores, :theatre_id, :integer
  end

  def self.down
  end
end

