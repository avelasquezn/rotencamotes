class Showtime < ActiveRecord::Base
  # Relationships
  belongs_to            :schedule

  # Validations
  validates_presence_of   :shown_at
  validates_presence_of   :status
  validates_uniqueness_of :shown_at, :scope => :schedule_id

  # valid statuses
  STATUSES = {
              :active   =>  'active',
              :inactive =>  'inactive'
  }

  # named scopes
  named_scope :active,
              :conditions =>  { :status => STATUSES[:active]  }
  named_scope :inactive,
              :conditions =>  { :status => STATUSES[:inactive]  }

  # Methods
  def activate
    self.status = STATUSES[:active]
  end

  def deactivate
    self.status = STATUSES[:inactive]
  end

  def active?
    return self.status == STATUSES[:active]
  end

  def inactive?
    return self.status == STATUSES[:inactive]
  end

  def time_shown_at
    return self.shown_at.to_time.strftime('%H:%M')
  end
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

