class WelcomeController < ApplicationController
	def index
    @data = Resort.all
  end 
end
