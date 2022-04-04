class CommentsController < ApplicationController
  before_action :authenticate_user!

  def create
    @comment = @commentable.comments.new comment_params
    @comment.user = current_user
    @comment.commenter = "#{current_user.profile.first_name} #{current_user.profile.last_name}"

    # if @commentable.is_a?(Article)
    #   @comment.article_id = params[:article_id]
    # else # @commentable is a Profile
    #   @comment.profile_id = User.find(params[:user_id])
    # end

    if @comment.save
      puts "YEY USER WAS SAVED"
    else
      puts @comment.errors.full_messages
    end

    puts "THIS IS AFTER THE SAVE"
    puts @comment.inspect 
    
    redirect_to @commentable
  end

  private

  def comment_params
    params.require(:comment).permit(:body)
  end
end
