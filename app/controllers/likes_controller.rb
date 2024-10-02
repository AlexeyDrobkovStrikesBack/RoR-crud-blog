class LikesController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @like = @post.likes.create(user: current_user)
    redirect_to post_path(@like.post), notice: 'Liked'
  end

  def destroy
    @like = Like.find(params[:id])
    @like.destroy
    redirect_to post_path(@like.post), notice: 'Unliked'
  end
end
