class BlogImagesController < ApplicationController
  # GET /blog_images
  # GET /blog_images.xml
  def index
    @blog_images = BlogImage.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @blog_images }
    end
  end

  # GET /blog_images/1
  # GET /blog_images/1.xml
  def show
    @blog_image = BlogImage.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @blog_image }
    end
  end

  # GET /blog_images/new
  # GET /blog_images/new.xml
  def new
    @blog_image = BlogImage.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @blog_image }
    end
  end

  # GET /blog_images/1/edit
  def edit
    @blog_image = BlogImage.find(params[:id])
  end

  # POST /blog_images
  # POST /blog_images.xml
  def create
    @blog_image = BlogImage.new(params[:blog_image])

    respond_to do |format|
      if @blog_image.save
        format.html { redirect_to(@blog_image, :notice => 'BlogImage was successfully created.') }
        format.xml  { render :xml => @blog_image, :status => :created, :location => @blog_image }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @blog_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /blog_images/1
  # PUT /blog_images/1.xml
  def update
    @blog_image = BlogImage.find(params[:id])

    respond_to do |format|
      if @blog_image.update_attributes(params[:blog_image])
        format.html { redirect_to(@blog_image, :notice => 'BlogImage was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @blog_image.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /blog_images/1
  # DELETE /blog_images/1.xml
  def destroy
    @blog_image = BlogImage.find(params[:id])
    @blog_image.destroy

    respond_to do |format|
      format.html { redirect_to(blog_images_url) }
      format.xml  { head :ok }
    end
  end
end
