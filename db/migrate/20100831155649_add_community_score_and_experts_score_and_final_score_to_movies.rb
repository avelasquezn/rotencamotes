class AddCommunityScoreAndExpertsScoreAndFinalScoreToMovies < ActiveRecord::Migration
  def self.up
    add_column :movies, :community_score, :decimal, :precision => 5, :scale => 2, :default => 0.0
    add_column :movies, :experts_score, :decimal, :precision => 5, :scale => 2, :default => 0.0
    add_column :movies, :final_score, :decimal, :precision => 5, :scale => 2, :default => 0.0
  end

  def self.down
    remove_column :movies, :final_score
    remove_column :movies, :experts_score
    remove_column :movies, :community_score
  end
end

