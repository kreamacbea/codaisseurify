class SongsController < ApplicationController
  before_action :set_artist

  def index
    @songs = @artist.songs
  end

  def show
    @songs = @artist.songs.find(params[:id])
  end

  def new
    @song = @artist.Song.new(song_params)
  end

  def create
    @song = @artist.Song.new(song_params)

    if @song.save
      redirect_to artist_path(@artist), notice: "Song added"
    else
      render :new
    end
  end

  private

  def set_artist
      @artist = Artist.find(params[:id])
  end

  def song_params
    params.require(:song).permit(:title, :length)
  end
end
