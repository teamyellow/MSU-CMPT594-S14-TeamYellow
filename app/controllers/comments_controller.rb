class CommentsController < ApplicationController
  def create
    @cookbook = Cookbook.find(params[:cookbook_id])
    @comment = @cookbook.comments.create!(params[:comment])
    @comment.author = User.find(session[:User_id])
    @comment.save
    redirect_to @cookbook
  end
end
