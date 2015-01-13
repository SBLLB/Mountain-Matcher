class WelcomeController < ApplicationController
	def index
    @resorts = Resort.all
 		@resort_search = Resort.search_by_nearest_airport(params[:search])
  end 

  def search
    @resorts = Resort.search_by_nearest_airport(params[:search])
    @data = Resort.all
    render :index
  end
end
