class CommentsController < ApplicationController

  def new
    @comment = Comment.new
    @post = Post.find(params[:post_id])
  end

  def create
    @comment = Comment.create(comment_params)
    @post = Post.find(params[:post_id])
    @post.comments << @comment
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body)
  end

end