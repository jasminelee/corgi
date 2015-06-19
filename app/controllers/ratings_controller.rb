class RatingsController < ApplicationController
	def create
		@name = Name.find(params[:name_id])
		@rating = @name.ratings.create(value: params[:value])
		redirect_to names_url
	end 
end