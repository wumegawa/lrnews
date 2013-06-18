class CommentsController < ApplicationController
  def index
    @info = Info.find(params[:info_id])
    @comment = Comment.new
    @comments = @info.comments
  end

  def create_comment
    @info = Info.find(params[:info_id])
    comment = Comment.new(params[:comment])
    @info.comments << comment
    @info.save
    redirect_to :back
  end

  def show
    @comments = Comment.find(params[:id])
    @comment = Comment.new
  end

  def reply
    @info = Info.find(params[:info_id])
    comment = Comment.new(params[:comment])
    @info.comments << comment
    @info.save
    redirect_to :info_comments
  end
end
