class ArtistsController < ApplicationController

  def index
    @artists = Artist.all
  end

  def show
    @artist = Artist.find(params[:id])
    @image = @artist.image
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

  def delete
    @artist.destroy(artist_params)
    redirect_to artists_path(@artists), notice: "Artist deleted"
  end

  private

  def image_params
    params[:images].present? ? params.require(:images) : []
  end

  def artist_params
    params.require(:artist).permit(:name, :image => [:remote_image_url], songs: [:artist_id, :title])
  end
end
