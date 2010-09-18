class MoviesController < InheritedResources::Base
  # before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :index, :show

  def default_path
    movies_path
  end

  def show
    @movie = Movie.find_by_id(params[:id])
    @scheduled_movie_chains_for_movie = Schedule.scheduled_movie_chains_for_movie(@movie.id)
    show!
  end
end

