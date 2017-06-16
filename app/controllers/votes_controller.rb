class VotesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @post.likes.create

    respond_to do |format|
      format.js {}
      format.html {}
    end
  end

  def destroy
    @post = Post.find(params[:post_id])
    @post.dislikes.create

    respond_to do |format|
      format.js {}
      format.html {}
    end
  end
end
