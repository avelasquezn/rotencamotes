class MovieChainsController < ApplicationController
  # GET /movie_chains
  # GET /movie_chains.xml
  def index
    @movie_chains = MovieChain.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @movie_chains }
    end
  end

  # GET /movie_chains/1
  # GET /movie_chains/1.xml
  def show
    @movie_chain = MovieChain.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @movie_chain }
    end
  end

  # GET /movie_chains/new
  # GET /movie_chains/new.xml
  def new
    @movie_chain = MovieChain.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @movie_chain }
    end
  end

  # GET /movie_chains/1/edit
  def edit
    @movie_chain = MovieChain.find(params[:id])
  end

  # POST /movie_chains
  # POST /movie_chains.xml
  def create
    @movie_chain = MovieChain.new(params[:movie_chain])

    respond_to do |format|
      if @movie_chain.save
        format.html { redirect_to(@movie_chain, :notice => 'MovieChain was successfully created.') }
        format.xml  { render :xml => @movie_chain, :status => :created, :location => @movie_chain }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @movie_chain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /movie_chains/1
  # PUT /movie_chains/1.xml
  def update
    @movie_chain = MovieChain.find(params[:id])

    respond_to do |format|
      if @movie_chain.update_attributes(params[:movie_chain])
        format.html { redirect_to(@movie_chain, :notice => 'MovieChain was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @movie_chain.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_chains/1
  # DELETE /movie_chains/1.xml
  def destroy
    @movie_chain = MovieChain.find(params[:id])
    @movie_chain.destroy

    respond_to do |format|
      format.html { redirect_to(movie_chains_url) }
      format.xml  { head :ok }
    end
  end
end
