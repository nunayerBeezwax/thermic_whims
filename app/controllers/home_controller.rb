class HomeController < ApplicationController

	def index
		@videos = Video.all
		@memes = Meme.all
	end
end