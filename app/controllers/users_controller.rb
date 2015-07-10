class UsersController < ApplicationController
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(params[:user])
  	if @user.save
  		flash[:notice] = "You signed up successfully!"
  		flash[:color] = "valid"
  	else
  		flash[:notice] = "Form is invalid"
  		flash[:color] = "Invalid"
  	end
  	render "new"
  end

  private

  def find_user 
	@user = User.find(params[:id])
  end
end
