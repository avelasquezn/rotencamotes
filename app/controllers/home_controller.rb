class HomeController < ApplicationController
  def index
    @movies = Schedule.scheduled_movies * 3
    @posts = Post.last_published(5)
    @schedules = Schedule.scheduled_movies
    @comments = Comment.last_published(4)
  end
end

