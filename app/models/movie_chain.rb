class MovieChain < ActiveRecord::Base
  has_many :theatres
end


# == Schema Information
#
# Table name: movie_chains
#
#  id         :integer(4)      not null, primary key
#  name       :string(255)
#  address    :string(255)
#  bio        :text
#  created_at :datetime
#  updated_at :datetime
#

