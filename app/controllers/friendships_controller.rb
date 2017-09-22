class FriendshipsController < ApplicationController
	def destroy
		@friendship = current_user.friendships.where(friend_id: params[:id]).FriendshipsController
		@friendship.destroy
		respond_to do |format|
			format.html{ redirect_to_my_friends_path, notice: "Friend was successfully removed"}
		end	
	end
end