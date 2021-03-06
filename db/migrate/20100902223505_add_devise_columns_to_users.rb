class AddDeviseColumnsToUsers < ActiveRecord::Migration
  def self.up
    change_column :users,  :email,                 :string,  {  :default => "", :null => false  }
    add_column    :users,  :encrypted_password,    :string,  {  :limit => 128,  :default => "", :null => false  }
    add_column    :users,  :password_salt,         :string,  {  :default => "", :null => false  }
    add_column    :users,  :confirmation_token,    :string
    add_column    :users,  :confirmed_at,          :datetime
    add_column    :users,  :confirmation_sent_at,  :datetime
    add_column    :users,  :reset_password_token,  :string
    add_column    :users,  :remember_token,        :string
    add_column    :users,  :remember_created_at,   :datetime
    add_column    :users,  :sign_in_count,         :integer,  { :default => 0 }
    add_column    :users,  :current_sign_in_at,    :datetime
    add_column    :users,  :last_sign_in_at,       :datetime
    add_column    :users,  :current_sign_in_ip,    :string
    add_column    :users,  :last_sign_in_ip,       :string
  end

  def self.down
  end
end

