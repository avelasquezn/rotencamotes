class CreateSchedules < ActiveRecord::Migration
  def self.up
    create_table :schedules do |t|
      t.integer :theatre_id
      t.integer :movie_id
      t.datetime :in_theatre_from
      t.datetime :in_theatre_to
      t.string :description
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :schedules
  end
end
