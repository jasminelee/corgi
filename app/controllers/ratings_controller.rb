class RatingsController < ApplicationController
	def create
		@corgi = Corgi.find(params[:corgi_id])
		@rating = @corgi.ratings.create(value: params[:value])
		redirect_to corgis_url
	end 
end