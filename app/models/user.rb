class User < ActiveRecord::Base
  validates_presence_of :email
  validates_presence_of :last_name
end

# == Schema Information
#
# Table name: users
#
#  id         :integer(4)      not null, primary key
#  first_name :string(255)
#  last_name  :string(255)
#  email      :string(255)
#  password   :string(255)
#  born_at    :date
#  created_at :datetime
#  updated_at :datetime
#

