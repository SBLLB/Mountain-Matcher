class ResortsController < ApplicationController
	def show
		@resort = Resort.friendly.find(params[:id])
	end

	# def index
 #    	@resorts = Resort.all
 #    	@resort_search = Resort.search_by_nearest_airport(params[:search])
 #  end 
end
