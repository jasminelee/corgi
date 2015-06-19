class NamesController < ApplicationController
	respond_to :html, :json 
	before_action :find_name, only: :destroy

	def index
		@names = Name.all
		respond_with @names

	end

	def new
		@name = Name.new
		respond_with @name 

	end

	def create
		@name = Name.create(name_params)
		respond_with @name, location: names_url 
	end

	def destroy
		@name = Name.find(params[:id])
		@name.destroy
		respond_with @name 
	end 

	private

	def name_params
		params.require(:name).permit(:name, :owner, :image)
	end

	private

	def find_name
		@name = Name.find(params[:id])
	end
end
