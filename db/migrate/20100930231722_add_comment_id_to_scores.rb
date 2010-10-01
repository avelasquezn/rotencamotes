class AddCommentIdToScores < ActiveRecord::Migration
  def self.up
    add_column :scores, :comment_id, :integer
  end

  def self.down
    remove_column :scores, :comment_id
  end
end
