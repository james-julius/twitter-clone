class FollowController < ApplicationController
  def new
    @user = User.find(params[:id])
    @follow = Follow.create(follower: current_user, followed_user: @user)
    print('MADE IT THROUGH CREATION FLOW')
  end

  def delete
    @user = User.find(params[:id])
    @follow = Follow.find(:first, conditions: ['follower = ? AND followed_user = ?', current_user.id, @user.id])
    Follow.destroy(@follow.id)
  end
end
