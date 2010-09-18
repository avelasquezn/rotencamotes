class MovieChainsController < InheritedResources::Base

  before_filter :authenticate_admin!
  respond_to    :html, :xml
  actions       :index, :show

  def default_path
    movie_chains_path
  end

end

