class GenresController < ApplicationController
  def show
    @genre = Genre.find(params[:id])
  end
  def index
    @genre = Genre.all
  end
  def new
    @genre = Genre.new
  end

  def create
    @genre = Genre.new
    @genre = Genre.create(big_params)
    redirect_to genre_path(@genre)
  end
  def edit
    @genre = Genre.find(params[:id])
  end
  def update
    @genre = Genre.find(params[:id])
    @genre.update(big_params)
    redirect_to genre_path(@genre)
  end
  private
  def big_params
    params.require(:genre).permit(:name)
  end
end
