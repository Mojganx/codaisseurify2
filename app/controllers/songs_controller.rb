class SongsController < ApplicationController

  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
    # @artist = Artist.find(params[:id])
  end

  def create
     @song = Song.create(song_params.merge(artist_id: params[:artist_id]))

     if @song.save
       redirect_to artist_path(params[:artist_id]), notice: "Added successfully"
     else
       render artist_path, notice: "Unable to add song"
     end
   end


  def edit
    @song = Song.find(params[:id])
  end

  def update
    @song = Song.find(params[:id])

    if @song.update_attributes(song_params)
      redirect_to @song
    else
      render 'edit'
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
