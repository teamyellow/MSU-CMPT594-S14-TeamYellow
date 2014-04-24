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

def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to(users_path, :notice => 'User was successfully updated.') }
      else
        format.html { render :action => "edit" }
      end
    end
  end

    
  def logout
    redirect_to '/'
    flash[:notice] = 'You logged out, please log in to continue'
  end

def authenticate
 @user_present = User.find_by_username(params[:username])
  if  @user_present && @user_present.password==params[:password]
    session[:User_id] =  @user_present.id
    flash[:notice] = "#{@user_present.first_name}, welcome to the cookbook!!"
    redirect_to cookbooks_path
  else
  flash[:warning] = "Error in Log in : Please enter correct username and password"
  redirect_to users_path
  end
end

end
