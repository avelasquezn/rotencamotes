class MoviesController < InheritedResources::Base
  # before_filter :authenticate_user!
  respond_to    :html, :xml
  actions       :index, :show

  def default_path
    movies_path
  end

end

