require 'test_helper'

class ShowtimeTest < ActiveSupport::TestCase
  # Relationships
  should belong_to              :schedule
  # Validations
  should validate_presence_of   :shown_at
  should validate_presence_of   :status
  should validate_uniqueness_of(:shown_at).scoped_to(:schedule_id)
end

# == Schema Information
#
# Table name: showtimes
#
#  id          :integer(4)      not null, primary key
#  schedule_id :integer(4)
#  shown_at    :datetime
#  description :string(255)
#  status      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

