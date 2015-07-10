class User::CorgisController < ApplicationController
	before_action :find_corgi,  only: [:destroy, :edit, :update ]
	respond_to :html, :json 

	def new
		@corgi = Corgi.new
		respond_with @corgi 

	end

	def create
		@corgi = Corgi.create(corgi_params)
		respond_with @corgi, location: corgis_url 
	end

	def destroy
		@corgi.destroy
		respond_with @corgi 
	end 

	def edit
		respond_with @corgi
	end

	def update
		@corgi.update(corgi_params)
		respond_with @corgi, location: corgis_url
  	end
	
  	def home
  	end

	private

	def corgi_params
		params.require(:corgi).permit(:name, :owner, :image)
	end

	private

	def find_corgi
		@corgi = Corgi.find(params[:id])
	end
end

