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

	def edit
		@name = Name.find(params[:id])
	end

	def update
		@name = Name.find(params[:id])
 
	  respond_to do |format|
	  	#
	    if @name.update_attributes({:name => params[:name] } )
	      format.html  { redirect_to(@name,
	                    :notice => 'name was successfully updated.') }
	      format.json  { head :no_content }
	    else
	      format.html  { render :action => "edit" }
	      format.json  { render :json => @name.errors,
	                    :status => :unprocessable_entity }
	    end
	   end
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
