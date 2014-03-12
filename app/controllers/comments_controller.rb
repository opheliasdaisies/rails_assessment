class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to "/posts/#{@comment.post_id}"
    else
      render @comment.post_id
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    post_id = @comment.post_id
    @comment.delete
    redirect_to post_path(post_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :body, :post_id)
  end

end