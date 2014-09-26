class VideosController < ApplicationController

	def index
		@videos = Video.paginate(:page => params[:page], :per_page => 12)
	end

end