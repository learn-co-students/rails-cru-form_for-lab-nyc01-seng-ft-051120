class GenresController < ApplicationController
    def index 
        @genre = Genre.all
    end

    def create
        @genre = Genre.new(genre_params)
        @genre.save
        redirect_to genre_path(@genre)
    end

    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params)
        redirect_to genre_path(@genre.id)
    end

    def show
        @genre = Genre.find(params[:id])
        # render :show
    end

    def edit
		@genre = Genre.find(params[:id])
    end
    
    def new
        @genre = Genre.new
    end
    private

		def genre_params
			params.require(:genre).permit(:name)
		end
end
