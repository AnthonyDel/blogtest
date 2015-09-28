class CommentsController < ApplicationController
  def create
    Comment.create commenter: params[:commenter], content: params[:content], post_id: params[:post_id]
    redirect_to "/posts/" + params[:post_id]
  end
end
