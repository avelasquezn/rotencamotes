class StudiosController < ApplicationController
  # GET /studios
  # GET /studios.xml
  def index
    @studios = Studio.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @studios }
    end
  end

  # GET /studios/1
  # GET /studios/1.xml
  def show
    @studio = Studio.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @studio }
    end
  end

  # GET /studios/new
  # GET /studios/new.xml
  def new
    @studio = Studio.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @studio }
    end
  end

  # GET /studios/1/edit
  def edit
    @studio = Studio.find(params[:id])
  end

  # POST /studios
  # POST /studios.xml
  def create
    @studio = Studio.new(params[:studio])

    respond_to do |format|
      if @studio.save
        format.html { redirect_to(@studio, :notice => 'Studio was successfully created.') }
        format.xml  { render :xml => @studio, :status => :created, :location => @studio }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @studio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /studios/1
  # PUT /studios/1.xml
  def update
    @studio = Studio.find(params[:id])

    respond_to do |format|
      if @studio.update_attributes(params[:studio])
        format.html { redirect_to(@studio, :notice => 'Studio was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @studio.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /studios/1
  # DELETE /studios/1.xml
  def destroy
    @studio = Studio.find(params[:id])
    @studio.destroy

    respond_to do |format|
      format.html { redirect_to(studios_url) }
      format.xml  { head :ok }
    end
  end
end
