require 'test_helper'

class AwardTest < ActiveSupport::TestCase
  should belong_to :institution
  should belong_to :category
  should belong_to :person
  should belong_to :movie
  should validate_presence_of :year_received
  should validate_presence_of :status
end

# == Schema Information
#
# Table name: awards
#
#  id             :integer(4)      not null, primary key
#  institution_id :integer(4)
#  category_id    :integer(4)
#  year_received  :integer(4)
#  status         :string(255)
#  person_id      :integer(4)
#  movie_id       :integer(4)
#  created_at     :datetime
#  updated_at     :datetime
#

