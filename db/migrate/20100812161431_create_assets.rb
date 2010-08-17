class CreateAssets < ActiveRecord::Migration
  def self.up
    create_table :assets do |t|
      t.integer :movie_id
      t.integer :attachable_id
      t.string :attachable_type

      t.timestamps
    end
  end

  def self.down
    drop_table :assets
  end
end
