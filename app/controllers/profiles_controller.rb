class ProfilesController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @posts = Post.all
    @is_current_user = current_user.id == params[:id]
  end
end
