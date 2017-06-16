class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def create
    if @post = Post.create(post_params)
      redirect_to posts_path
    else
      render :new
    end
  end

  private

  def post_params
    params.require(:post)
          .permit(:title, :content)
  end
end
