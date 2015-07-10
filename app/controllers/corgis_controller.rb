class CorgisController < ApplicationController
	respond_to :html, :json 

	def index
		@corgis = Corgi.all
		respond_with @corgis

	end
end