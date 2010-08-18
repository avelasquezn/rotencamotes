require 'test_helper'

class AdTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end

# == Schema Information
#
# Table name: ads
#
#  id          :integer(4)      not null, primary key
#  name        :string(255)
#  campaign    :string(255)
#  content     :text
#  started_at  :datetime
#  finished_at :datetime
#  place       :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

