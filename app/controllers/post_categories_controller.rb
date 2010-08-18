class PostCategoriesController < ApplicationController
  # GET /post_categories
  # GET /post_categories.xml
  def index
    @post_categories = PostCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @post_categories }
    end
  end

  # GET /post_categories/1
  # GET /post_categories/1.xml
  def show
    @post_category = PostCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @post_category }
    end
  end

  # GET /post_categories/new
  # GET /post_categories/new.xml
  def new
    @post_category = PostCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @post_category }
    end
  end

  # GET /post_categories/1/edit
  def edit
    @post_category = PostCategory.find(params[:id])
  end

  # POST /post_categories
  # POST /post_categories.xml
  def create
    @post_category = PostCategory.new(params[:post_category])

    respond_to do |format|
      if @post_category.save
        format.html { redirect_to(@post_category, :notice => 'PostCategory was successfully created.') }
        format.xml  { render :xml => @post_category, :status => :created, :location => @post_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @post_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /post_categories/1
  # PUT /post_categories/1.xml
  def update
    @post_category = PostCategory.find(params[:id])

    respond_to do |format|
      if @post_category.update_attributes(params[:post_category])
        format.html { redirect_to(@post_category, :notice => 'PostCategory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @post_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /post_categories/1
  # DELETE /post_categories/1.xml
  def destroy
    @post_category = PostCategory.find(params[:id])
    @post_category.destroy

    respond_to do |format|
      format.html { redirect_to(post_categories_url) }
      format.xml  { head :ok }
    end
  end
end
