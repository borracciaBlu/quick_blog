class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(params[:comment_body])
    puts YAML::dump(params)
    redirect_to @post
  end
end
