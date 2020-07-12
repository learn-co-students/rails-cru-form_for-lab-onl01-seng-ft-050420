class ArtistsController < ApplicationController

    def index 
        @artist = Artist.all 
    end 

    def new 
        @artist = Artist.new 
    end 

    def create  
        @artist = Artist.create(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end 

    def show 
        find_artist
    end 

    def edit 
        find_artist 
    end 

    def update 
        @artist = Artist.update(params.require(:artist).permit(:name, :bio))
        redirect_to artist_path(@artist)
    end 

    private 

    def find_artist 
        @artist = Artist.find(params[:id])
    end 
    
end
