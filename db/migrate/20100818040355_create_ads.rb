class CreateAds < ActiveRecord::Migration
  def self.up
    create_table :ads do |t|
      t.string :name
      t.string :campaign
      t.text :content
      t.datetime :started_at
      t.datetime :finished_at
      t.string :place

      t.timestamps
    end
  end

  def self.down
    drop_table :ads
  end
end
