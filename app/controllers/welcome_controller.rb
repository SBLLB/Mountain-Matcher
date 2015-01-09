class WelcomeController < ApplicationController
	def index
    @data = Resort.all
    @resorts = Resort.search_by_nearest_airport(params[:search])
    # Resort.search_by_nearest_airport("turin")
  end 

  def search
    @resorts = Resort.search_by_nearest_airport(params[:search])
    @data = Resort.all
    render :index
  end
end
