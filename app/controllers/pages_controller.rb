class PagesController < ApplicationController
  def index
    @posts = Post.all
  end

  def create
    @post = Post.find(params[:post_id])
    @comment =
    @posts.comments.create(params[:comment].permit(:commenter, :content))
end
end
