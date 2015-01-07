class ResortsController < ApplicationController
	def show
		@resort = Resort.friendly.find(params[:id])
	end
end
