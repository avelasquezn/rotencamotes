class ExternalLinksController < ApplicationController
  # GET /external_links
  # GET /external_links.xml
  def index
    @external_links = ExternalLink.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @external_links }
    end
  end

  # GET /external_links/1
  # GET /external_links/1.xml
  def show
    @external_link = ExternalLink.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @external_link }
    end
  end

  # GET /external_links/new
  # GET /external_links/new.xml
  def new
    @external_link = ExternalLink.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @external_link }
    end
  end

  # GET /external_links/1/edit
  def edit
    @external_link = ExternalLink.find(params[:id])
  end

  # POST /external_links
  # POST /external_links.xml
  def create
    @external_link = ExternalLink.new(params[:external_link])

    respond_to do |format|
      if @external_link.save
        format.html { redirect_to(@external_link, :notice => 'ExternalLink was successfully created.') }
        format.xml  { render :xml => @external_link, :status => :created, :location => @external_link }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @external_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /external_links/1
  # PUT /external_links/1.xml
  def update
    @external_link = ExternalLink.find(params[:id])

    respond_to do |format|
      if @external_link.update_attributes(params[:external_link])
        format.html { redirect_to(@external_link, :notice => 'ExternalLink was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @external_link.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /external_links/1
  # DELETE /external_links/1.xml
  def destroy
    @external_link = ExternalLink.find(params[:id])
    @external_link.destroy

    respond_to do |format|
      format.html { redirect_to(external_links_url) }
      format.xml  { head :ok }
    end
  end
end
