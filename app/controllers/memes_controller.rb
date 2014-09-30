class MemesController < ApplicationController

	def index
		@memes = Meme.paginate(:page => params[:page], :per_page => 12)
	end

end