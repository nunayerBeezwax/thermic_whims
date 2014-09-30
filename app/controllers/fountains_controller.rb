class FountainsController < ApplicationController

	def index
		@fountains = Fountain.paginate(:page => params[:page], :per_page => 12)
	end

end