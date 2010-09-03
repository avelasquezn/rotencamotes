class HomeController < ApplicationController
  def index
    @movies = Schedule.scheduled_movies
  end
end

