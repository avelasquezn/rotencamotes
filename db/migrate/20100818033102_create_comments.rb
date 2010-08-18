class CreateComments < ActiveRecord::Migration
  def self.up
    create_table :comments do |t|
      t.integer :post_id
      t.string :email
      t.string :name
      t.string :website
      t.integer :user_id
      t.integer :parent_id
      t.text :content
      t.string :status
      t.boolean :featured

      t.timestamps
    end
  end

  def self.down
    drop_table :comments
  end
end
