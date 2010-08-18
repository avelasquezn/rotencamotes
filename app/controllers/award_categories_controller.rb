class AwardCategoriesController < ApplicationController
  # GET /award_categories
  # GET /award_categories.xml
  def index
    @award_categories = AwardCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @award_categories }
    end
  end

  # GET /award_categories/1
  # GET /award_categories/1.xml
  def show
    @award_category = AwardCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @award_category }
    end
  end

  # GET /award_categories/new
  # GET /award_categories/new.xml
  def new
    @award_category = AwardCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @award_category }
    end
  end

  # GET /award_categories/1/edit
  def edit
    @award_category = AwardCategory.find(params[:id])
  end

  # POST /award_categories
  # POST /award_categories.xml
  def create
    @award_category = AwardCategory.new(params[:award_category])

    respond_to do |format|
      if @award_category.save
        format.html { redirect_to(@award_category, :notice => 'AwardCategory was successfully created.') }
        format.xml  { render :xml => @award_category, :status => :created, :location => @award_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @award_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /award_categories/1
  # PUT /award_categories/1.xml
  def update
    @award_category = AwardCategory.find(params[:id])

    respond_to do |format|
      if @award_category.update_attributes(params[:award_category])
        format.html { redirect_to(@award_category, :notice => 'AwardCategory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @award_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /award_categories/1
  # DELETE /award_categories/1.xml
  def destroy
    @award_category = AwardCategory.find(params[:id])
    @award_category.destroy

    respond_to do |format|
      format.html { redirect_to(award_categories_url) }
      format.xml  { head :ok }
    end
  end
end
