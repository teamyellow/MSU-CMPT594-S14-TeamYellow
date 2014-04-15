class UsersController < ApplicationController

def new
# default: render 'new' template
#@user = User.new
end

def create
 @user = User.create(params[:user])
 if @user.errors.any?
 flash[:warning] = "Error in sign up : #{@user.errors.full_messages}"
 #render:new
redirect_to new_user_path
 else
 flash[:notice] = "#{@user.first_name} was successfully created."
 redirect_to users_path
 end
end

def index

end

def authenticate
 @user_present = User.find_by_username(params[:username])
  if  @user_present 
    session[:User_id] =  @user_present.id
    flash[:notice] = "#{@user_present.first_name}, welcome to cookbook!!"
    redirect_to cookbooks_path
  else
  flash[:warning] = "Error in Log in : Please enter correct email and password"
  redirect_to users_path
  end
end

end
