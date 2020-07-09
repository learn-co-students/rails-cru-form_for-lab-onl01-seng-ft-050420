class GenresController < ApplicationController
    before_action :set_genre 

    def index
        @genres = Genre.all
    end

    def show
    end

    def new
        @genre = Genre.new
    end

    def edit
    end

    def create
        @genre = Genre.create(genre_params)
        redirect_to genre_path(@genre)
    end

    def update
        @genre.update(genre_params)
        redirect_to genre_path(@genre)
    end

    def destroy
        @genre.destroy
        redirect_to genres_path
    end

    private

        def genre_params
            params.require(:genre).permit(:name)
        end

        def set_genre
            @genre = Genre.find_by_id(params[:id])
        end

end
