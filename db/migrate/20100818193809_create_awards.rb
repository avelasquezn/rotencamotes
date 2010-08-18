class CreateAwards < ActiveRecord::Migration
  def self.up
    create_table :awards do |t|
      t.integer :institution_id
      t.integer :category_id
      t.integer :year_received
      t.string :status
      t.integer :person_id
      t.integer :movie_id

      t.timestamps
    end
  end

  def self.down
    drop_table :awards
  end
end
