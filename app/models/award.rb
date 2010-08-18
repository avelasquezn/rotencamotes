class Award < ActiveRecord::Base
  belongs_to :institution, :class_name => "AwardInstitution", :foreign_key => "institution_id"
  belongs_to :category, :class_name => "AwardCategory", :foreign_key => "category_id"
  belongs_to :person
  belongs_to :movie
  validates_presence_of :year_received
  validates_presence_of :status
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

