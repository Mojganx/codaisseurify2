class SongsController < ApplicationController

  def show
    @song = Song.find(params[:id])
  end

  def new
    @artist = Artist.find(params[:artist_id])
    @song = Song.new
  end

  def create
     @song = Song.create(song_params.merge(artist_id: params[:artist_id]))

     if @song.save
       redirect_to artist_path(params[:artist_id])
     else
       render artist_path
     end
   end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy

    redirect_to artists_path(params[:artist_id])
  end

  private

  def song_params
    params.require(:song).permit(:name, :artist_id)
  end

end
