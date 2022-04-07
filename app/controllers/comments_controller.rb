class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentable.comments.new comment_params
    @comment.user = current_user
    @comment.commenter = "#{current_user.profile.first_name} #{current_user.profile.last_name}"

    unless @comment.save
      puts "========== COMMENT ERROR MESSAGES =========="
      puts @comment.errors.full_messages
      puts "======== END COMMENT ERROR MESSAGES ========"
    end
    
    redirect_to @commentable
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
