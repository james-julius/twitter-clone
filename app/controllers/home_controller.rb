class HomeController < ApplicationController
  def index
    @followed_users = current_user.followings
    @posts = Post.where(user_id: current_user.followings.map(&:id).push(current_user.id)).order('created_at DESC')
  end
end
