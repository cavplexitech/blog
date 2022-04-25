class CommentsController < ApplicationController
  before_action :authenticate_user!

  def new
    @comment = Comment.new(parent_id: params[:parent_id])
  end

  def create
    @comment = @commentable.comments.new comment_params
    @comment.user = current_user
    @comment.commenter = current_user.profile.first_name + " " + current_user.profile.last_name
    puts "==========================="
    puts params
    puts "==========================="
    if @comment.save
      redirect_to @commentable
    else
      raise @comment
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :parent_id)
  end
end
