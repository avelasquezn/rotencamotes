class Person < ActiveRecord::Base
  has_attached_file :picture, :styles => { :medium => "300x300>", :thumb => "100x100>" }
  # relationships
  has_many :as_an_actor_fans,   :class_name => "Profile", :foreign_key => "favorite_actor_id"
  has_many :as_a_writer_fans,   :class_name => "Profile", :foreign_key => "favorite_writer_id"
  has_many :as_a_director_fans, :class_name => "Profile", :foreign_key => "favorite_director_id"
  has_many :movie_directors, :foreign_key => "director_id"
  has_many :directed_movies,  :through => :movie_directors
  has_many :movie_writers, :foreign_key => "writer_id"
  has_many :written_movies,   :through => :movie_writers
  has_many :movie_characters
  has_many :performed_movies, :through => :movie_characters
  has_many :awards

  # validations
  validates_presence_of   :last_name
  validates_uniqueness_of :first_name, :scope => :last_name

  # methods
  def name
    self.first_name << " " << self.last_name
  end

  def full_name
    self.first_name << " " << self.middle_name << " " << self.last_name
  end
end




# == Schema Information
#
# Table name: people
#
#  id                   :integer(4)      not null, primary key
#  first_name           :string(255)
#  middle_name          :string(255)
#  last_name            :string(255)
#  born_at              :datetime
#  born_in              :string(255)
#  bio                  :text
#  created_at           :datetime
#  updated_at           :datetime
#  url                  :string(255)
#  picture_file_name    :string(255)
#  picture_content_type :string(255)
#  picture_file_size    :integer(4)
#  picture_updated_at   :datetime
#

