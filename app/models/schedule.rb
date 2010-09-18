class Schedule < ActiveRecord::Base
  # relationships
  belongs_to            :theatre
  belongs_to            :movie
  has_many              :showtimes
  # validations
  validates_presence_of :in_theatre_from
  validates_presence_of :status

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
  named_scope :from_theatre,
                lambda  { |theatre_id|  {
                  :conditions =>  { :theatre_id => theatre_id },
                  :order      =>  'in_theatre_from DESC'
                }
              }
  named_scope :from_movie,
                lambda  { |movie_id|  {
                  :conditions =>  { :movie_id =>  movie_id  },
                  :order      =>  'in_theatre_from DESC'
                }
              }
  named_scope :from_movie_chain,
                lambda  { |movie_chain_id|  {
                  :conditions =>  { :theatres => {  :movie_chain_id => movie_chain_id }},
                  :order      =>  'in_theatre_from DESC',
                  :joins      => :theatre
                }

                }
  # methods
  def activate
    self.status = STATUSES[:active]
    self.save
  end

  def deactivate
    self.status = STATUSES[:inactive]
    self.save
  end

  def active?
    return self.status == STATUSES[:active]
  end

  def inactive?
    return self.status == STATUSES[:inactive]
  end

  def current_showtimes
    return self.showtimes.active.empty? ? '' : self.showtimes.active.map(&:time_shown_at).join(' | ')
  end

  def self.scheduled_movies
    Movie.find_by_sql(
      'select * from movies where id in (select movie_id from schedules where status like "active" group by movie_id) order by created_at DESC')
  end

  def self.scheduled_movie_chains_for_movie movie_id
    MovieChain.find_by_sql([
      'select * from movie_chains where id in (select movie_chain_id from theatres where id in (select theatre_id from schedules where status like "active" and movie_id = ?))', movie_id])
  end
end

# == Schema Information
#
# Table name: schedules
#
#  id              :integer(4)      not null, primary key
#  theatre_id      :integer(4)
#  movie_id        :integer(4)
#  in_theatre_from :datetime
#  in_theatre_to   :datetime
#  description     :string(255)
#  status          :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

