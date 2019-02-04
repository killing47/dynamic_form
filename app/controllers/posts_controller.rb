class PostsController < ApplicationController

  def create
    post = Post.new(post_params)
    post.save
    render :json => post
  end

  def update
  end

  def destroy
  end

  private

  def post_params
    params.fetch(:post).permit(:title,comments_attributes: [:id, :comment])
  end

end
