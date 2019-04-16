class SongsController < ApplicationController
	def show
		@song = Song.find_by(id: params[:id])
		render json: @song.to_json(methods: [:histogram])
	end
end
