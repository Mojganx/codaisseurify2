class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
     @song = Song.new
  end

  def new
    @artist = Artist.new
    @song = Song.new
  end

  def edit
  @artist = Artist.find(params[:id])
end

  def destroy
    @artist = Dinosaur.find(params[:id])

    @artist.destroy

    redirect_to artists_path
  end


end