class HomeController < ApplicationController
  def index
    @movies = Schedule.scheduled_movies
    @posts = Post.last_published(5)
    @schedule = Schedule.scheduled_movies
  end
end

