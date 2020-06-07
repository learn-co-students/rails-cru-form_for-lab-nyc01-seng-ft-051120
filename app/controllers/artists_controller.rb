class ArtistsController < ApplicationController
  def index 
    @artist = Artist.all
  end
  def show
    @artist = Artist.find(params[:id])
  end
  def new
    @artist = Artist.new
  end

  def create
    @artist = Artist.new
    @artist = Artist.create(big_params)
    redirect_to artist_path(@artist)
  end
  def edit
    @artist = Artist.find(params[:id])
  end
  def update
    @artist = Artist.find(params[:id])
    @artist.update(big_params)
    redirect_to artist_path(@artist)
  end
  private
  def big_params
    params.require(:artist).permit(:name,:bio)
  end
end
