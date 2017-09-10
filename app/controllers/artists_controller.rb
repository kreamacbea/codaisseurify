class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
    @photos = Photo.all
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
    @photo = @artist.photo
  end

  def create
    @artist = Artist.new(artist_params)

    if @artist.save
      image_params.each do |image|
        @artist.photo.create(image: image)
      end

      redirect_to edit_artist_path(@artist), notice: "Artist added"
    else
      render :new
    end
  end

  def update
    if @artist.update(artist_params)
    image_params.each do |image|
      @artist.photo.create(image: image)
    end

      redirect_to edit_artist_path(@artist), notice: "Artist updated"
    else
      render :edit
    end
  end

  private

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

  def artist_params
    params.require(:artist).permit(:name)
  end
end
