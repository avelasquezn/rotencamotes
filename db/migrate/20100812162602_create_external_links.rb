class CreateExternalLinks < ActiveRecord::Migration
  def self.up
    create_table :external_links do |t|
      t.string :title
      t.string :description
      t.string :url

      t.timestamps
    end
  end

  def self.down
    drop_table :external_links
  end
end
