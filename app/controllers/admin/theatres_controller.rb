class Admin::TheatresController < InheritedResources::Base
  before_filter :authenticate_admin!
  respond_to    :html, :xml
  actions       :all

  def default_path
    admin_theatres_path
  end

  def index
    redirect_to admin_movie_chains_path
  end

  def new
    if params[:movie_chain_id]
	    @movie_chain = MovieChain.find(params[:movie_chain_id])
	    @theatre = @movie_chain.theatres.new
	    new!
	  else
	    redirect_to admin_movie_chains_path
	  end
  end
  def create
    create!   { admin_movie_chain_path(@theatre.movie_chain) }
  end

  def update
    update!   { admin_movie_chain_path(@theatre.movie_chain) }
  end

  def destroy
    destroy!  { admin_movie_chain_path(@theatre.movie_chain) }
  end


end

