require 'test_helper'

class FavoriteTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: favorites
#
#  id               :integer(4)      not null, primary key
#  favoritable_id   :integer(4)
#  favoritable_type :string(255)
#  profile_id       :integer(4)
#  created_at       :datetime
#  updated_at       :datetime
#

