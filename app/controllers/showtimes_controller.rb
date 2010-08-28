class ShowtimesController < ApplicationController
  # GET /showtimes
  # GET /showtimes.xml
  def index
    @showtimes = Showtime.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @showtimes }
    end
  end

  # GET /showtimes/1
  # GET /showtimes/1.xml
  def show
    @showtime = Showtime.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @showtime }
    end
  end

  # GET /showtimes/new
  # GET /showtimes/new.xml
  def new
    @showtime = Showtime.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @showtime }
    end
  end

  # GET /showtimes/1/edit
  def edit
    @showtime = Showtime.find(params[:id])
  end

  # POST /showtimes
  # POST /showtimes.xml
  def create
    @showtime = Showtime.new(params[:showtime])

    respond_to do |format|
      if @showtime.save
        format.html { redirect_to(@showtime, :notice => 'Showtime was successfully created.') }
        format.xml  { render :xml => @showtime, :status => :created, :location => @showtime }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @showtime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /showtimes/1
  # PUT /showtimes/1.xml
  def update
    @showtime = Showtime.find(params[:id])

    respond_to do |format|
      if @showtime.update_attributes(params[:showtime])
        format.html { redirect_to(@showtime, :notice => 'Showtime was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @showtime.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /showtimes/1
  # DELETE /showtimes/1.xml
  def destroy
    @showtime = Showtime.find(params[:id])
    @showtime.destroy

    respond_to do |format|
      format.html { redirect_to(showtimes_url) }
      format.xml  { head :ok }
    end
  end
end
