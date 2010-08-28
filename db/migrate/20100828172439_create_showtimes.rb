class CreateShowtimes < ActiveRecord::Migration
  def self.up
    create_table :showtimes do |t|
      t.integer :schedule_id
      t.datetime :shown_at
      t.string :description
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :showtimes
  end
end
