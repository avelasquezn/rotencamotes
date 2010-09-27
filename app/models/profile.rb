class Profile < ActiveRecord::Base
  belongs_to :user
  belongs_to :favorite_movie, :class_name => "Movie", :foreign_key => "favorite_movie_id"
  belongs_to :favorite_actor, :class_name => "Person", :foreign_key => "favorite_actor_id"
  belongs_to :favorite_genre, :class_name => "Genre", :foreign_key => "favorite_genre_id"
  belongs_to :favorite_director, :class_name => "Person", :foreign_key => "favorite_director_id"
  belongs_to :favorite_writer, :class_name => "Person", :foreign_key => "favorite_writer_id"

  def favorite_director_name
    self.favorite_director.nil? ? 'No especificado' : self.favorite_director.name
  end

  def favorite_writer_name
    self.favorite_writer.nil? ? 'No especificado' : self.favorite_writer.name
  end

  def favorite_actor_name
    self.favorite_actor.nil? ? 'No especificado' : self.favorite_actor.name
  end
end




# == Schema Information
#
# Table name: profiles
#
#  id                       :integer(4)      not null, primary key
#  current_location         :string(255)
#  favorite_movie_character :string(255)
#  favorite_movie_line      :string(255)
#  created_at               :datetime
#  updated_at               :datetime
#  user_id                  :integer(4)
#  favorite_movie_id        :integer(4)
#  favorite_actor_id        :integer(4)
#  favorite_genre_id        :integer(4)
#  favorite_director_id     :integer(4)
#  favorite_writer_id       :integer(4)
#

