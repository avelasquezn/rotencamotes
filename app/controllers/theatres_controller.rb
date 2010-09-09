class TheatresController < ApplicationController
  before_filter :authenticate_user!
  # GET /theatres
  # GET /theatres.xml
  def index
    @theatres = Theatre.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @theatres }
    end
  end

  # GET /theatres/1
  # GET /theatres/1.xml
  def show
    @theatre = Theatre.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @theatre }
    end
  end
end

