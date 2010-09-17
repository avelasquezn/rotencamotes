class SchedulesController < InheritedResources::Base
  # before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :index, :show

  def default_path
    movies_path
  end

  def index
    @scheduled_movies = Schedule.scheduled_movies
    index!
  end

end

