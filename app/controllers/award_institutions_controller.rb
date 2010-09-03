class AwardInstitutionsController < ApplicationController
  # GET /award_institutions
  # GET /award_institutions.xml
  def index
    @award_institutions = AwardInstitution.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @award_institutions }
    end
  end

  # GET /award_institutions/1
  # GET /award_institutions/1.xml
  def show
    @award_institution = AwardInstitution.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @award_institution }
    end
  end

  # GET /award_institutions/new
  # GET /award_institutions/new.xml
  def new
    @award_institution = AwardInstitution.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @award_institution }
    end
  end

  # GET /award_institutions/1/edit
  def edit
    @award_institution = AwardInstitution.find(params[:id])
  end

  # POST /award_institutions
  # POST /award_institutions.xml
  def create
    @award_institution = AwardInstitution.create(params[:award_institution])

    respond_to do |format|
      if @award_institution.save
        format.html { redirect_to(@award_institution, :notice => 'AwardInstitution was successfully created.') }
        format.xml  { render :xml => @award_institution, :status => :created, :location => @award_institution }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @award_institution.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /award_institutions/1
  # PUT /award_institutions/1.xml
  def update
    @award_institution = AwardInstitution.find(params[:id])

    respond_to do |format|
      if @award_institution.update_attributes(params[:award_institution])
        format.html { redirect_to(@award_institution, :notice => 'AwardInstitution was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @award_institution.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /award_institutions/1
  # DELETE /award_institutions/1.xml
  def destroy
    @award_institution = AwardInstitution.find(params[:id])
    @award_institution.destroy

    respond_to do |format|
      format.html { redirect_to(award_institutions_url) }
      format.xml  { head :ok }
    end
  end
end

