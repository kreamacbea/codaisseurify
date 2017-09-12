class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
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
      image_params.each do |image|
        @artist.image.create(image: image)
      end

      redirect_to edit_artist_path(@artist), notice: "Artist added"
    else
      render :new
    end
  end

  def update
    if @artist.update(artist_params)
    image_params.each do |image|
      @artist.image.create(image: image)
    end

      redirect_to edit_artist_path(@artist), notice: "Artist updated"
    else
      render :edit
    end
  end

  private

  def image_params
    params[:image].present? ? params.require(:image) : []
  end

  def artist_params
    params.require(:artist).permit(:name, :remote_image_url)
  end
end
