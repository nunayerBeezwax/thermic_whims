class FountainsController < ApplicationController

	def index
		@fountains = Fountain.paginate(:page => params[:page], :per_page => 12)
	end

	def show
		@fountain = Fountain.find(params[:id])
	end

private
	def fountain_params
		params.require(:fountain).permit(:id)
	end

end