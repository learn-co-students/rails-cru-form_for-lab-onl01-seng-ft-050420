class SongsController < ApplicationController
before_action :set_song # :index, :show, :delete, :edit

def index
    @songs = Song.all
end

def show
end

def new
    @song = Song.new
end

def edit
end

def create
    @song = Song.create(song_params)
    redirect_to song_path(@song)
end

def update
    @song.update(song_params)
    redirect_to song_path(@song)
end

def destroy
    @song.destroy
    redirect_to songs_path
end

private

    def song_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def set_song
        @song = Song.find_by_id(params[:id])
    end

end