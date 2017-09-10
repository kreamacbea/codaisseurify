class ArtistsController < ApplicationController

  # before_action :set_songs, only: [:show, :edit, :update]

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @songs = @artist.songs
  end

  def new
    @artist = Artist.new
  end

  def edit
    @artist = Artist.find(params[:id])
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      redirect_to @artist
    else
      render :new
    end
  end

  def update
    @artist = Artist.find(params[:id])

    if @artist.update(artist_params)
      redirect_to @artist
    else
      render :edit
    end
  end

  private

  # def set_songs
  #   @songs = Song.find(artist_id: artist_path)
  # end

  def artist_params
    params.require(:artist).permit(:name, :image_url)
  end
end
