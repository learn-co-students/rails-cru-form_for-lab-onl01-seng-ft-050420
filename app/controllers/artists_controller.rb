class ArtistsController < ApplicationController
    before_action :set_artist 

    def index
        @artists = Artist.all
    end

    def show
    end

    def new
        @artist = Artist.new
    end

    def edit
    end

    def create
        @artist = Artist.create(artist_params)
        redirect_to artist_path(@artist)
    end

    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    def destroy
        @student.destroy
        redirect_to artists_path
    end

    private

        def artist_params
            params.require(:artist).permit(:name, :bio)
        end

        def set_artist
            @artist = Artist.find_by_id(params[:id])
        end

end