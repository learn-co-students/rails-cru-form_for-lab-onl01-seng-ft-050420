class GenresController < ApplicationController

    def index 
        @genres = Genre.all 
    end 

    def new 
        @genre = Genre.new 
    end 

    def create  
        @genre = Genre.create(params.require(:genre).permit(:name))
        redirect_to genre_path(@genre)
    end 

    def show 
        find_genre
    end 

    def edit 
        find_genre 
    end 

    def update 
        @genre = Genre.update(params.require(:genre).permit(:name, :bio))
        redirect_to genre_path(@genre)
    end 

    private 

    def find_genre 
        @genre = Genre.find(params[:id])
    end 
  
end
