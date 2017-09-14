class SongsController < ApplicationController

  def index
  end

  def show
    @songs = songs
  end

  def new
    @song = Song.new
  end

  def edit
    @song = Song.find(params[:id])
  end

  def create
    @song = Song.new(song_params)

    if @song.save
      redirect_to @song
    else
      render :new
    end
  end

  def update
    @song = Song.find(params[:id])

    if @song.update(song_params)
      redirect_to @song
    else
      render :edit
    end
  end

  private

  def song_params
    params.require(:song).permit(:title, :length)
  end
end
