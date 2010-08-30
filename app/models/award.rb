class Award < ActiveRecord::Base
  belongs_to :institution,  :class_name => "AwardInstitution",  :foreign_key => "institution_id"
  belongs_to :category,     :class_name => "AwardCategory",     :foreign_key => "category_id"
  belongs_to :person
  belongs_to :movie
  validates_presence_of :year_received
  validates_presence_of :status

  # Valid status values
  STATUSES = {
              :nominee  => 'Nominado(a)',
              :winner   => 'Ganador(a)'
  }

  # named scopes
  named_scope :from_institution,
              lambda { |institution_id|
                { :conditions => { :institution_id => institution_id }
                }
              }
  named_scope :from_category,
              lambda {  |category_id|
                {
                  :conditions => { :category_id => category_id }
                }
              }
  named_scope :from_person,
              lambda {  |person_id|
                { :conditions => { :person_id => person_id }
                }
              }
  named_scope :from_movie,
              lambda {
                { :conditions => { :movie_id => movie_id }
                }
              }
  named_scope :from_intitution_in_year,
              lambda  { |institution_id, year_received|
                { :conditions =>  { :institution_id => institution_id,
                                    :year_received  =>  year_received }
                }
              }

  # Methods

  # Status Update
  def mark_as_nominee
    self.status = STATUSES[:nominee]
    self.save
  end

  def mark_as_winner
    self.status = STATUSES[:winner]
    self.save
  end

  # Status Get
  def nominee?
    return self.status == STATUSES[:nominee]
  end

  def winner?
    return self.status == STATUSES[:winner]
  end
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

