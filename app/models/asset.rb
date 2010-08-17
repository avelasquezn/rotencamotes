class Asset < ActiveRecord::Base
  belongs_to :attachable, :polymorphic => true
  belongs_to :movie
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

