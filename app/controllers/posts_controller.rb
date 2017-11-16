class PostsController < ApplicationController

  # POST request to /posts.json
  def create
    post = Post.create post_params
    @current_user.posts << post
    
    if post.save
      render :json => post
    else
      render :json => post.errors.full_messages
    end
  end

  private
  def post_params
    params.require(:post).permit(:content, :image, :shared_post)
  end
end
