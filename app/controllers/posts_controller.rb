class PostsController < ActionController::Base

  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create!(params.permit(:post))

    if @post.save
      redirect_to @post
    else
      render new
    end
  end

end