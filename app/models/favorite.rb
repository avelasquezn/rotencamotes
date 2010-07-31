class Favorite < ActiveRecord::Base
  belongs_to :favoritable, :polymorphic => :true
  belongs_to :profile
  
  def favoritable_type=(sType)
    super(sType.to_s.classify.constantize.base_class.to_s)
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

