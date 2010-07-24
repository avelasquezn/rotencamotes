require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  should validate_presence_of :email
  should validate_presence_of :last_name
  should have_many :profiles
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

