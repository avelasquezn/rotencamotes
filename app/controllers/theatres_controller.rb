class TheatresController < ApplicationController
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

  # GET /theatres/new
  # GET /theatres/new.xml
  def new
    @theatre = Theatre.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @theatre }
    end
  end

  # GET /theatres/1/edit
  def edit
    @theatre = Theatre.find(params[:id])
  end

  # POST /theatres
  # POST /theatres.xml
  def create
    @theatre = Theatre.new(params[:theatre])

    respond_to do |format|
      if @theatre.save
        format.html { redirect_to(@theatre, :notice => 'Theatre was successfully created.') }
        format.xml  { render :xml => @theatre, :status => :created, :location => @theatre }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @theatre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /theatres/1
  # PUT /theatres/1.xml
  def update
    @theatre = Theatre.find(params[:id])

    respond_to do |format|
      if @theatre.update_attributes(params[:theatre])
        format.html { redirect_to(@theatre, :notice => 'Theatre was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @theatre.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /theatres/1
  # DELETE /theatres/1.xml
  def destroy
    @theatre = Theatre.find(params[:id])
    @theatre.destroy

    respond_to do |format|
      format.html { redirect_to(theatres_url) }
      format.xml  { head :ok }
    end
  end
end
