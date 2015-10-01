class CommentsController < ApplicationController
  def new
  end

  def create
  	@comment = Comment.new(comment_params)
  	@post = Post.find_by_id(@comment.post_id)
  	@current_user = current_user
  	@comment.save
  	redirect_to "/cities/#{@post.city_id}/posts/#{@post.id}"
  end

  private

  def comment_params
  	params.require(:comment).permit(:body, :user_id, :post_id)
  end

end
