class MovieCharactersController < ApplicationController
  # GET /movie_characters
  # GET /movie_characters.xml
  def index
    @movie_characters = MovieCharacter.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @movie_characters }
    end
  end

  # GET /movie_characters/1
  # GET /movie_characters/1.xml
  def show
    @movie_character = MovieCharacter.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @movie_character }
    end
  end

  # GET /movie_characters/new
  # GET /movie_characters/new.xml
  def new
    @movie_character = MovieCharacter.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @movie_character }
    end
  end

  # GET /movie_characters/1/edit
  def edit
    @movie_character = MovieCharacter.find(params[:id])
  end

  # POST /movie_characters
  # POST /movie_characters.xml
  def create
    @movie_character = MovieCharacter.new(params[:movie_character])

    respond_to do |format|
      if @movie_character.save
        format.html { redirect_to(@movie_character, :notice => 'MovieCharacter was successfully created.') }
        format.xml  { render :xml => @movie_character, :status => :created, :location => @movie_character }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @movie_character.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /movie_characters/1
  # PUT /movie_characters/1.xml
  def update
    @movie_character = MovieCharacter.find(params[:id])

    respond_to do |format|
      if @movie_character.update_attributes(params[:movie_character])
        format.html { redirect_to(@movie_character, :notice => 'MovieCharacter was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @movie_character.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /movie_characters/1
  # DELETE /movie_characters/1.xml
  def destroy
    @movie_character = MovieCharacter.find(params[:id])
    @movie_character.destroy

    respond_to do |format|
      format.html { redirect_to(movie_characters_url) }
      format.xml  { head :ok }
    end
  end
end
