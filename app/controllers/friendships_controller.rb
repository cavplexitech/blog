class FriendshipsController < ApplicationController
  def index
    @friends = current_user.friends
    @gotten_friend_requests = current_user.gotten_friend_requests
    puts 'heheheheh'
    puts @gotten_friend_requests
  end

  def create
    @friend_request = Friendship.new(user_id: params[:user_id].to_i, friend_id: params[:friend_id].to_i,
                                     confirmed: params[:confirmed])

    if @friend_request.save
      redirect_to profile_path(User.find(params[:friend_id]).profile) # , alert: "Friend request has been #{response}"
    else
      puts '========== FRIEND REQUEST ERRORS =========='
      puts @friend_request.errors.full_messages
      puts '======== END FRIEND REQUEST ERRORS ========'
    end
  end

  def update
    @friend_request = Friendship.find(params[:id])
    @friend_request.confirmed = params[:confirmed]

    if @friend_request.save
      redirect_to friendships_path # , alert: "Friend request has been #{response}"
    else
      puts '========== FRIEND REQUEST ERRORS =========='
      puts @friend_request.errors.full_messages
      puts '======== END FRIEND REQUEST ERRORS ========'
    end

    # if params[:confirmed] == true
    #   response = 'accepted'
    # else
    #   response = 'rejected'
    # end
  end

  def destroy
    @friend_request = Friendship.find(params[:id])
    @friend_request.destroy

    redirect_to friendships_path
  end
end
