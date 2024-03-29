class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)

    if @post.save
      redirect_to @post
    else
      render new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])

    if @post.update_attributes(post_params)
      redirect_to @post
    else
      render edit
    end
  end

  def destroy
    @post = Post.delete(params[:id])
    redirect_to posts_path
  end

  private

  def post_params
    params.require(:post).permit(:title, :author, :body)
  end

end