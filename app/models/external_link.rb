class ExternalLink < ActiveRecord::Base
  has_many :assets, :as => :attachable
end

