class AlbumsController < ApplicationController
	def index
		@albums = Album.all
		render json: @albums
	end
	def show
		@album = Album.find_by(id: params[:id])
		render json: @album.songs
	end
end
