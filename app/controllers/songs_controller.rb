class SongsController < ApplicationController
    
    def index 
        @songs = Song.all 
    end 

    def new 
        @song = Song.new 
    end 

    def create  
        @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end 

    def show 
        find_song

    end 

    def edit 
        find_song 
    end 

    def update 
        @song = Song.create(params.require(:song).permit(:name, :artist_id, :genre_id))
        redirect_to song_path(@song)
    end 

    private 

    def find_song 
        @song = Song.find(params[:id])
    end 
end
