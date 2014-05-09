class CommentsController < ApplicationController
  def create
    @cookbook = Cookbook.find(params[:cookbook_id])
    @comment = @cookbook.comments.create!(params[:comment])
    redirect_to @cookbook
  end
end
