require 'test_helper'

class AssetTest < ActiveSupport::TestCase
  should belong_to :movie
  should validate_presence_of :attachable_type
end

# == Schema Information
#
# Table name: assets
#
#  id              :integer(4)      not null, primary key
#  movie_id        :integer(4)
#  attachable_id   :integer(4)
#  attachable_type :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

